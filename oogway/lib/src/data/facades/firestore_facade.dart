import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oogway/src/common/extensions/logger_extension.dart';
import 'package:oogway/src/common/extensions/string_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/user.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:riverpod/riverpod.dart';

class OogwayFirestoreDatabase with Logging {
  final FirebaseFirestore _database = FirebaseFirestore.instance;

  Future<bool> createNewUser(OogwayUser user) async {
    logger.i('Attempting to create a user in the database');

    try {
      await _database.collection('users').doc(user.id).set({
        "date": user.date,
        "name": user.name,
        "placeId": user.place?.placeID,
        "passions": user.passions.map((Passion e) {
          return e.enumToString();
        }).toList(),
      });

      print("PRINT PLACEID: ${user.place?.placeID}");

      await _database
          .collection('users')
          .doc(user.id)
          .collection('location')
          .doc(user.place?.placeID)
          .set(
        {
          "streetNumber": user.place?.streetNumber,
          "street": user.place?.street,
          "city": user.place?.city,
          "state": user.place?.state,
          "zipCode": user.place?.zipCode,
        },
      );

      logger.i('User ${user.id} created in the database!');

      return true;
    } catch (e) {
      logger.i('Failed to create User ${user.id} in the database: $e');
      return false;
    }
  }

  Future<void> favoriteCharity(String uid, Charity charity) async {
    try {
      await _database
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .doc("${charity.ein}")
          .set(charity.toJson());
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<void> removeFavorite(String uid, Charity charity) async {
    try {
      await _database
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .doc("${charity.ein}")
          .delete();
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Stream<List<Charity>> favoritesStream(String uid) {
    Stream<QuerySnapshot> stream = _database
        .collection("users")
        .doc(uid)
        .collection("favorites")
        .snapshots();

    return stream.map((query) => query.docs
        .map((doc) => Charity.fromJson(doc.data() as Map<String, dynamic>))
        .toList());
  }

  Future<OogwayUser> getUser(String uid) async {
    try {
      DocumentSnapshot doc = await _database.collection("users").doc(uid).get();

      DocumentSnapshot locDoc = await _database
          .collection("users")
          .doc(uid)
          .collection("location")
          .doc(doc['placeId'])
          .get();

      QuerySnapshot favQuery = await _database
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .get();

      return OogwayUser.fromDocumentSnapshot(
        doc: doc,
        locDoc: locDoc,
        favQuery: favQuery,
      );
    } catch (e) {
      rethrow;
    }
  }
}

final firestoreDatabaseProvider = Provider<OogwayFirestoreDatabase>((ref) {
  return OogwayFirestoreDatabase();
});

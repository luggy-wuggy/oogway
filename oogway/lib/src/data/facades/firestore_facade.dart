import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oogway/src/data/data.dart';
import 'package:oogway/src/models/user.dart';
import 'package:riverpod/riverpod.dart';

class OogwayFirestoreDatabase {
  final FirebaseFirestore _database = FirebaseFirestore.instance;

  Future<bool> createNewUser(OogwayUser user) async {
    try {
      await _database.collection('users').doc(user.id).set({
        "date": user.date,
      });

      await _database
          .collection('users')
          .doc(user.id)
          .collection('location')
          .doc()
          .set(
        {
          "streetNumber": user.place?.streetNumber,
          "street": user.place?.street,
          "city": user.place?.city,
          "state": user.place?.state,
          "zipCode": user.place?.zipCode,
        },
      );

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // Future<void> addFavorite(String uid, Charity charity) async {
  //   try {
  //     await _database
  //         .collection("users")
  //         .doc(uid)
  //         .collection("favorites")
  //         .doc("${charity.ein}")
  //         .set({
  //       'title': "${charity.charityName}",
  //       'ein': "${charity.ein}",
  //       'category': "${charity.category!.categoryName}",
  //       'date': Timestamp.now(),
  //     });
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }

  // Future<void> removeFavorite(String uid, Charity charity) async {
  //   try {
  //     await _database
  //         .collection("users")
  //         .doc(uid)
  //         .collection("favorites")
  //         .doc("${charity.ein}")
  //         .delete();
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }

  // Stream<List<FavoriteCharity>> favoritesStream(String uid) {
  //   Stream<QuerySnapshot> stream = _database
  //       .collection("users")
  //       .doc(uid)
  //       .collection("favorites")
  //       .snapshots();

  //   return stream.map((query) => query.docs
  //       .map((doc) => FavoriteCharity.fromDocumentSnapshot(doc))
  //       .toList());
  // }

  Future<OogwayUser> getUser(String uid) async {
    try {
      DocumentSnapshot doc = await _database.collection("users").doc(uid).get();
      DocumentSnapshot locDoc = await _database
          .collection("users")
          .doc(uid)
          .collection("location")
          .doc()
          .get();
      return OogwayUser.fromDocumentSnapshot(doc, locDoc);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

// 3
final databaseProvider = Provider<OogwayFirestoreDatabase?>((ref) {
  final auth = ref.watch(authStateChangesProvider);

  // we only have a valid DB if the user is signed in
  if (auth.asData?.value?.uid != null) {
    return OogwayFirestoreDatabase();
  }
  // else we return null
  return null;
});

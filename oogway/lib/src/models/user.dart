import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/place.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:recase/recase.dart';

class OogwayUser {
  String? id;
  String? name;
  DateTime? date;
  Place? place = Place();
  String? placeId;
  late List<Passion> passions;
  late List<Charity> favorites;

  OogwayUser();

  /// Used to decode Firestore document snapshot to an Oogway User user.
  OogwayUser.fromDocumentSnapshot({
    required DocumentSnapshot doc,
    required DocumentSnapshot locDoc,
    required QuerySnapshot favQuery,
  }) {
    List<Passion> passionList = List<String>.from(doc['passions'])
        .map((e) => EnumToString.fromString(Passion.values, e.camelCase)!)
        .toList();

    List<Charity> favoritesList = favQuery.docs.map((e) {
      return Charity.fromJson(e.data() as Map<String, dynamic>);
    }).toList();

    id = doc.id;
    date = doc['date'].toDate();
    name = doc['name'];
    placeId = doc['placeId'];
    passions = passionList;
    place?.city = locDoc["city"];
    place?.state = locDoc["state"];
    place?.street = locDoc["street"];
    place?.streetNumber = locDoc["streetNumber"];
    place?.zipCode = locDoc["zipCode"];
    favorites = favoritesList;
  }
}

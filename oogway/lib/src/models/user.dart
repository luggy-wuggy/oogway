import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
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

  OogwayUser();

  /// Used to decode Firestore document snapshot to an Oogway User user.
  OogwayUser.fromDocumentSnapshot(
      DocumentSnapshot doc, DocumentSnapshot locDoc) {
    List<Passion> passionList = List<String>.from(doc['passions'])
        .map((e) => EnumToString.fromString(Passion.values, e.camelCase)!)
        .toList();

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
  }
}

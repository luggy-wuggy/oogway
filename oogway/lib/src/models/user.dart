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
    passions = passionList;
    print(locDoc.data());
    // place?.city = locDoc[0]["city"];
    // place?.state = locDoc[0]["state"];
    // place?.street = locDoc[0]["street"];
    // place?.streetNumber = locDoc[0]["streetNumber"];
    // place?.zipCode = locDoc[0]["zipCode"];
  }
}

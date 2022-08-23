import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oogway/src/models/place.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';

class OogwayUser {
  String? id;
  String? name;
  DateTime? date;
  Place? place = Place();
  String? placeId;
  List<Passion>? passions;

  OogwayUser({this.id, this.date, this.passions});

  OogwayUser.fromDocumentSnapshot(
      DocumentSnapshot doc, DocumentSnapshot locDoc) {
    id = doc.id;
    date = doc['date'];
    name = doc['name'];
    passions = List.from(doc['passions']);
    place?.city = locDoc["city"];
    place?.state = locDoc["state"];
    place?.street = locDoc["street"];
    place?.streetNumber = locDoc["streetNumber"];
    place?.zipCode = locDoc["zipCode"];
  }
}

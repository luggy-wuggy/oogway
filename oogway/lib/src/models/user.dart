import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oogway/src/models/place.dart';

class OogwayUser {
  late String? id;
  late String? name;
  late DateTime? date;
  late Place? place;

  OogwayUser({this.id, this.date, this.place});

  OogwayUser.fromDocumentSnapshot(
      DocumentSnapshot doc, DocumentSnapshot locDoc) {
    id = doc.id;
    date = doc['date'];
    name = doc['name'];
    place?.city = locDoc["city"];
    place?.state = locDoc["state"];
    place?.street = locDoc["street"];
    place?.streetNumber = locDoc["streetNumber"];
    place?.zipCode = locDoc["zipCode"];
  }
}

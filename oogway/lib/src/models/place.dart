class Place {
  String? placeID;
  String? streetNumber;
  String? street;
  String? city;
  String? state;
  String? zipCode;

  Place({
    this.placeID,
    this.streetNumber,
    this.street,
    this.city,
    this.state,
    this.zipCode,
  });

  @override
  String toString() {
    return "$streetNumber $street, $city, $state $zipCode";
  }
}

class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() {
    return 'Suggestion(description: $description, placeId: $placeId)';
  }
}

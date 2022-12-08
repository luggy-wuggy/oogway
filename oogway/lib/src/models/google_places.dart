/// Class object to deserialize JSON result from Google Places Detail API
class PlaceDetail {
  String placeID;
  String? streetNumber;
  String? route; // Street name
  String? subpremise; // Apt, Suit, Building #
  String? locality; // City
  String? administrativeAreaLevel1; // State
  String? country;
  String? postalCode;
  String? postalCodeSuffix;

  PlaceDetail({
    required this.placeID,
    this.streetNumber,
    this.subpremise,
    this.route,
    this.locality,
    this.administrativeAreaLevel1,
    this.country,
    this.postalCode,
    this.postalCodeSuffix,
  });

  factory PlaceDetail.fromMap(Map<String, dynamic> data) {
    PlaceDetail placeDetail = PlaceDetail(placeID: data['place_id']);
    final addressComponents = data['address_components'] as List<dynamic>;

    for (var c in addressComponents) {
      final List type = c['types'];
      if (type.contains('street_number')) {
        placeDetail.streetNumber = c['long_name'];
      }
      if (type.contains('subpremise')) {
        placeDetail.subpremise = c['long_name'];
      }
      if (type.contains('route')) {
        placeDetail.route = c['long_name'];
      }
      if (type.contains('locality')) {
        placeDetail.locality = c['long_name'];
      }
      if (type.contains('postal_code')) {
        placeDetail.postalCode = c['long_name'];
      }
      if (type.contains('postal_code_suffix')) {
        placeDetail.postalCodeSuffix = c['long_name'];
      }
      if (type.contains('country')) {
        placeDetail.country = c['short_name'];
      }
      if (type.contains('administrative_area_level_1')) {
        placeDetail.administrativeAreaLevel1 = c['short_name'];
      }
    }

    return placeDetail;
  }
}

/// Class object to deserialize JSON result from Google Places Autocomplete API
class PlaceSuggestion {
  PlaceSuggestion({
    required this.placeId,
    required this.mainText,
    required this.secondaryText,
    required this.description,
  });

  final String placeId;
  final String mainText;
  final String secondaryText;
  final String description;

  factory PlaceSuggestion.fromMap(Map<String, dynamic> data) {
    final placeId = data['place_id'] as String;
    final mainText = data['structured_formatting']['main_text'] as String;
    final secondaryText =
        data['structured_formatting']['secondary_text'] as String;
    final description = data['description'] as String;

    return PlaceSuggestion(
      placeId: placeId,
      mainText: mainText,
      secondaryText: secondaryText,
      description: description,
    );
  }

  @override
  String toString() {
    return 'Suggestion( placeId: $placeId\n mainText: $mainText\n secondaryText: $secondaryText)';
  }
}

/// Class object to deserialize JSON result from Google Places Geocode API
class LatLngPlaces {
  LatLngPlaces({
    required this.placeId,
    required this.lat,
    required this.lng,
  });

  final String placeId;
  final double lat;
  final double lng;

  factory LatLngPlaces.fromMap(Map<String, dynamic> data) {
    final placeId = data['place_id'] as String;
    final lat = data['geometry']['location']['lat'] as double;
    final lng = data['geometry']['location']['lng'] as double;

    return LatLngPlaces(
      placeId: placeId,
      lat: lat,
      lng: lng,
    );
  }

  @override
  String toString() {
    return 'LatLngPlaces( placeId: $placeId\n Lat: $lat\n Lng: $lng)';
  }
}

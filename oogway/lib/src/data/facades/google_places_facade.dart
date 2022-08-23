import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oogway/src/common/extensions/response.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:riverpod/riverpod.dart';

// TODO to consolidate the API keys in one place
final String? googlePlacesApiKey = dotenv
    .env['GOOGLE_PLACES_KEY']; //"AIzaSyBk4m7TL12f_cHw6CiPvU0XZv06EB3S3Iw";

const String googlePlacesAutocompleteBaseUrl =
    "https://maps.googleapis.com/maps/api/place/autocomplete/json?";

const String googlePlacesDetailsBaseUrl =
    "https://maps.googleapis.com/maps/api/place/details/json?";

/// A facade over our Google Places services, Places Autocomplete and Places Details.
class GooglePlacesFacade {
  /// Utilize the Autocomplete API to get the place suggestions per user String [input]
  Future<List<PlaceSuggestion>?> fetchAddressSuggestions(
      {required String input}) async {
    try {
      var response = await Dio().get(
        googlePlacesAutocompleteBaseUrl,
        queryParameters: {
          'input': input,
          'types': "geocode",
          'components': "country:us",
          'key': googlePlacesApiKey,
        },
      );

      if (response.isOk) {
        final result = response.data;
        switch (result['status']) {
          case "OK":
            return result['predictions']
                .map<PlaceSuggestion>((data) => PlaceSuggestion.fromMap(data))
                .toList();
          default:
            return [];
        }
      } else {
        throw Exception('Failed to fetch suggestion');
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<PlaceDetail?> fetchPlaceDetailFromId({required String placeId}) async {
    try {
      var response = await Dio().get(
        googlePlacesDetailsBaseUrl,
        queryParameters: {
          'place_id': placeId,
          'field': 'address_component',
          'key': googlePlacesApiKey,
        },
      );

      if (response.isOk) {
        final result = response.data;
        switch (result['status']) {
          case "OK":
            return PlaceDetail.fromMap(result['result']);
          default:
            return null;
        }
      } else {
        throw Exception('Failed to fetch place detail');
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}

final googlePlacesFacadeProvider = Provider<GooglePlacesFacade>((ref) {
  return GooglePlacesFacade();
});

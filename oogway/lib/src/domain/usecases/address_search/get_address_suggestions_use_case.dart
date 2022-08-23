import 'package:oogway/src/common/extensions/logger.dart';
import 'package:oogway/src/data/facades/google_places_facade.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:riverpod/riverpod.dart';

class GetAddressSuggestionsUseCase with Logging {
  final GooglePlacesFacade googlePlaces;

  GetAddressSuggestionsUseCase({required this.googlePlaces});

  Future<List<PlaceSuggestion>?> call({required String address}) async {
    return await googlePlaces.fetchAddressSuggestions(input: address);
  }
}

final getAddressSuggestionsUseCaseProvider =
    Provider<GetAddressSuggestionsUseCase>((ref) {
  return GetAddressSuggestionsUseCase(
    googlePlaces: ref.read(googlePlacesFacadeProvider),
  );
});

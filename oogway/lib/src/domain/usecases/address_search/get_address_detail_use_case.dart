import 'package:oogway/src/common/extensions/logger.dart';
import 'package:oogway/src/data/facades/google_places_facade.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:riverpod/riverpod.dart';

class GetAddressDetailsUseCase with Logging {
  final GooglePlacesFacade googlePlaces;

  GetAddressDetailsUseCase({required this.googlePlaces});

  Future<PlaceDetail?> call({required String placeId}) async {
    return await googlePlaces.fetchPlaceDetailFromId(placeId: placeId);
  }
}

final getAddressDetailsUseCaseProvider =
    Provider<GetAddressDetailsUseCase>((ref) {
  return GetAddressDetailsUseCase(
    googlePlaces: ref.read(googlePlacesFacadeProvider),
  );
});

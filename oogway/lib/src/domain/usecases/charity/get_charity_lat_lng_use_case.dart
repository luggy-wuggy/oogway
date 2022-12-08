import 'package:oogway/src/data/facades/google_places_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:riverpod/riverpod.dart';

class GetCharityLatLngUseCase {
  GetCharityLatLngUseCase({required this.googlePlacesFacade});

  final GooglePlacesFacade googlePlacesFacade;

  Future<LatLngPlaces?> call(Charity charity) async {
    var streetAddress = charity.mailingAddress?.streetAddress1 ?? "";
    var city = charity.mailingAddress?.city ?? "";
    var state = charity.mailingAddress?.stateOrProvince ?? "";

    streetAddress = streetAddress.split(" ").join("+");
    city = city.split(" ").join("+");
    state = state.split(" ").join("+");

    final queryAddress = "$streetAddress+$city+$state";

    return googlePlacesFacade.fetchLatLngFromAddress(queryAddress);
  }
}

final getCharityLatLngUseCaseProvider =
    Provider<GetCharityLatLngUseCase>((ref) {
  return GetCharityLatLngUseCase(
    googlePlacesFacade: ref.read(googlePlacesFacadeProvider),
  );
});

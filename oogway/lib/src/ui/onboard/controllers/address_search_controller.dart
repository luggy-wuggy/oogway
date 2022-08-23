import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/address_search/address_search.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:oogway/src/models/place.dart';

class AddressSearchController extends ChangeNotifier {
  @protected
  final GetAddressSuggestionsUseCase getAddressSuggestionsUseCase;
  @protected
  final GetAddressDetailsUseCase getAddressDetailsUseCase;
  List<PlaceSuggestion>? _suggestions = [];
  late PlaceDetail? _selectedAddress;

  /// Stores if the user already used autocomplete during the session.
  /// Triggered when [getAddressDetails] is called.
  bool _didUseAutocomplete = false;

  AddressSearchController(
      {required this.getAddressSuggestionsUseCase,
      required this.getAddressDetailsUseCase});

  List<PlaceSuggestion> get suggestions => _suggestions ?? [];
  bool get didUseAutocomplete => _didUseAutocomplete;

  Future<void> getAddressSuggestions({required String address}) async {
    if (address.isEmpty) {
      clearAddressSuggestions();
      return;
    }
    _suggestions = await getAddressSuggestionsUseCase(address: address);
    notifyListeners();
  }

  Future<PlaceDetail?> getAddressDetails({required String placeId}) async {
    _didUseAutocomplete = true;
    notifyListeners();
    _selectedAddress = await getAddressDetailsUseCase(placeId: placeId);
    return await getAddressDetailsUseCase(placeId: placeId);
  }

  Future<void> clearAddressSuggestions() async {
    _suggestions?.clear();
    notifyListeners();
  }
}

final addressSearchControllerProvider =
    ChangeNotifierProvider.autoDispose<AddressSearchController>(
  (ref) {
    return AddressSearchController(
      getAddressSuggestionsUseCase:
          ref.read(getAddressSuggestionsUseCaseProvider),
      getAddressDetailsUseCase: ref.read(getAddressDetailsUseCaseProvider),
    );
  },
);

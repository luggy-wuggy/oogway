import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/address_search/address_search.dart';
import 'package:oogway/src/models/google_places.dart';

class AddressSearchController extends ChangeNotifier {
  @protected
  final GetAddressSuggestionsUseCase getAddressSuggestionsUseCase;
  @protected
  final GetAddressDetailsUseCase getAddressDetailsUseCase;
  List<PlaceSuggestion>? _suggestions = [];
  PlaceDetail? _selectedAddress;

  AddressSearchController(
      {required this.getAddressSuggestionsUseCase,
      required this.getAddressDetailsUseCase});

  List<PlaceSuggestion> get suggestions => _suggestions ?? [];

  PlaceDetail? get selectedAddress => _selectedAddress;
  set selectedAddress(PlaceDetail? placeDetail) {
    _selectedAddress = placeDetail;
    notifyListeners();
  }

  Future<void> getAddressSuggestions({required String address}) async {
    if (address.isEmpty) {
      clearAddressSuggestions();
      return;
    }
    _suggestions = await getAddressSuggestionsUseCase(address: address);
    notifyListeners();
  }

  Future<PlaceDetail?> getAddressDetails({required String placeId}) async {
    selectedAddress = await getAddressDetailsUseCase(placeId: placeId);
    clearAddressSuggestions();
    return selectedAddress;
  }

  Future<void> clearAddressSuggestions() async {
    _suggestions?.clear();
    notifyListeners();
  }

  void refresh() {
    clearAddressSuggestions();
    _selectedAddress = null;
    notifyListeners();
  }
}

final addressSearchControllerProvider =
    ChangeNotifierProvider<AddressSearchController>(
  (ref) {
    return AddressSearchController(
      getAddressSuggestionsUseCase:
          ref.read(getAddressSuggestionsUseCaseProvider),
      getAddressDetailsUseCase: ref.read(getAddressDetailsUseCaseProvider),
    );
  },
);

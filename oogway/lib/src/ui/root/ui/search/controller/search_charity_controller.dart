import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/charity/get_charity_suggestions_use_case.dart';
import 'package:oogway/src/models/charity/charity.dart';

class CharitySearchController extends ChangeNotifier {
  CharitySearchController({required this.getCharitySuggestionsUseCase});
  @protected
  final GetCharitySuggestionsUseCase getCharitySuggestionsUseCase;

  List<Charity>? _suggestions = [];
  List<Charity> get suggestion => _suggestions ?? [];

  Future<void> getCharitySuggestions({required String charity}) async {
    if (charity.isEmpty) {
      clearCharitySuggestions();
      return;
    }

    _suggestions = await getCharitySuggestionsUseCase(charity);
    notifyListeners();
  }

  Future<void> clearCharitySuggestions() async {
    _suggestions?.clear();
    notifyListeners();
  }
}

final charitySearchProvider =
    ChangeNotifierProvider<CharitySearchController>((ref) {
  return CharitySearchController(
    getCharitySuggestionsUseCase:
        ref.read(getCharitySuggestionsUseCaseProvider),
  );
});

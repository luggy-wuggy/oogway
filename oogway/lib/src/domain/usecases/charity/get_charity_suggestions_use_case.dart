import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/data/facades/charity_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';

class GetCharitySuggestionsUseCase {
  GetCharitySuggestionsUseCase({required this.charityFacade});

  final CharityNavigatorFacade charityFacade;

  Future<List<Charity>> call(String charity) async {
    final result = charityFacade.fetchCharitiesBySearch(charity);
    return result;
  }
}

final getCharitySuggestionsUseCaseProvider =
    Provider<GetCharitySuggestionsUseCase>((ref) {
  return GetCharitySuggestionsUseCase(
    charityFacade: ref.read(charityFacadeProvider),
  );
});

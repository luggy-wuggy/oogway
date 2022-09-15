import 'package:oogway/src/data/facades/facades.dart';
import 'package:oogway/src/models/charity.dart';
import 'package:riverpod/riverpod.dart';

class GetOrganizationsUseCase {
  GetOrganizationsUseCase({required this.charityFacade});

  final CharityNavigatorFacade charityFacade;

  Future<List<Charity>> call() async {
    final result = charityFacade.fetchCharities();
    return result;
  }
}

final getOrganizationsUseCaseProvider =
    Provider<GetOrganizationsUseCase>((ref) {
  return GetOrganizationsUseCase(
      charityFacade: ref.read(charityFacadeProvider));
});

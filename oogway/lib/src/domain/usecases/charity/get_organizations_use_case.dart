import 'package:oogway/src/data/facades/charity_facade.dart';
import 'package:oogway/swagger_generated_code/charity_navigator.swagger.dart';
import 'package:riverpod/riverpod.dart';

class GetOrganizationsUseCase {
  GetOrganizationsUseCase({required this.charityFacade});

  final CharityNavigatorFacade charityFacade;

  Future<List<OrganizationCollectionItem>?> call() async {
    return await charityFacade.fetchOrganizations();
  }
}

final getOrganizationsUseCaseProvider =
    Provider<GetOrganizationsUseCase>((ref) {
  return GetOrganizationsUseCase(
      charityFacade: ref.read(charityFacadeProvider));
});

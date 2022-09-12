import 'package:oogway/src/data/data.dart';
import 'package:riverpod/riverpod.dart';
import 'package:oogway_api/oogway_api.dart';
import 'package:built_collection/built_collection.dart';

class GetOrganizationsUseCase {
  GetOrganizationsUseCase({required this.charityFacade});

  final CharityNavigatorFacade charityFacade;

  Future<BuiltList<OrganizationCollectionItem>?> call() async {
    return await charityFacade.fetchOrganizations();
  }
}

final getOrganizationsUseCaseProvider =
    Provider<GetOrganizationsUseCase>((ref) {
  return GetOrganizationsUseCase(
      charityFacade: ref.read(charityFacadeProvider));
});

import 'package:oogway/src/app_providers.dart';
import 'package:oogway_api/oogway_api.dart';
import 'package:riverpod/riverpod.dart';

class CharityFacade {
  CharityFacade({required this.charityApi});

  final OrganizationCollectionApi charityApi;

  Future<void> fetchOrganizations() async {
    charityApi.searchOrganizations(
      appId: "a71b11e3",
      appKey: "14e84a0b33b1264879cf00974fe28b0c",
      rated: true,
      pageSize: 10,
      categoryID: "2",
    );
  }
}

final accountFacadeProvider = Provider<CharityFacade>((ref) {
  final oogwayApi = ref.read(oogwayApiProvider);

  return CharityFacade(charityApi: oogwayApi.getOrganizationCollectionApi());
});

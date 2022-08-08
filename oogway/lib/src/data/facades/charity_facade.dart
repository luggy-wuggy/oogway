import 'package:oogway/src/app_providers.dart';
import 'package:oogway/src/common/constants/charity_navigator.dart';
import 'package:oogway/swagger_generated_code/charity_navigator.swagger.dart';
import 'package:riverpod/riverpod.dart';

class CharityNavigatorFacade {
  CharityNavigatorFacade({required this.api});

  final CharityNavigator api;

  Future<List<OrganizationCollectionItem>?> fetchOrganizations() async {
    try {
      final response = await api.organizationsGet(
        appId: CharityApiKeys.appId,
        appKey: CharityApiKeys.appKey,
      );

      if (response.isSuccessful) {
        return response.body;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}

final charityFacadeProvider = Provider<CharityNavigatorFacade>((ref) {
  final charityNavigatorApi = ref.read(charityNavigatorApiProvider);

  return CharityNavigatorFacade(api: charityNavigatorApi);
});

import 'package:oogway/src/app_providers.dart';
import 'package:oogway/src/common/constants/charity_navigator.dart';
import 'package:oogway_api/oogway_api.dart';
import 'package:riverpod/riverpod.dart';
import 'package:built_collection/built_collection.dart';

class CharityNavigatorFacade {
  CharityNavigatorFacade({required this.api});

  final OogwayApi api;

  Future<BuiltList<OrganizationCollectionItem>?> fetchOrganizations() async {
    try {
      final response =
          await api.getOrganizationCollectionApi().searchOrganizations(
                appId: CharityApiKeys.appId,
                appKey: CharityApiKeys.appKey,
              );

      if (response.statusCode == 200) {
        print(response.data);
        return response.data;
      }

      //   // final response = await api.organizationsGet(
      //   //   appId: CharityApiKeys.appId,
      //   //   appKey: CharityApiKeys.appKey,
      //   // );

      //   // if (response.isSuccessful) {
      //   //   return response.body;
      //   // }
    } catch (e) {
      rethrow;
    }
  }
}

final charityFacadeProvider = Provider<CharityNavigatorFacade>((ref) {
  final charityNavigatorApi = ref.read(charityNavigatorApiProvider);

  return CharityNavigatorFacade(api: charityNavigatorApi);
});

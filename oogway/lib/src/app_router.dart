import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/common/extensions/logger.dart';
import 'package:oogway/src/common/extensions/map.dart';
import 'package:oogway/src/ui/root/root_view.dart';
import 'package:oogway/src/ui/onboard/onboard_view.dart';
import 'package:oogway/src/ui/splash/splash_view.dart';

class OogwayRouter extends ChangeNotifier with Logging {
  late var router = _loggedOutRoutes;

  Future<void> login() async {
    router = _loggedInRoutes;
    logger.i("Router changed to _loggedInRoutes");
    notifyListeners();
  }

  Future<void> logout() async {
    router = _loggedOutRoutes;
    notifyListeners();
  }

  void pushNamed(String name,
      {Object? extra,
      Map<String, String> params = const <String, String>{},
      Map<String, String> queryParams = const <String, String>{}}) {
    router.pushNamed(
      name,
      extra: extra,
      params: params,
      queryParams: queryParams,
    );

    notifyListeners();
  }

  void pop() {
    router.pop();
    notifyListeners();
  }

  GoRouter get _loggedOutRoutes => GoRouter(
        routes: [
          GoRoute(
            name: SplashView.routeName,
            path: _routeMap.get(SplashView.routeName),
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: SplashView(
                executeAfterLayout: (context) async {
                  final uuid = await SecureStorage.readSecureData(
                      SecureStorage.accountUid);

                  if (uuid == null || uuid.isEmpty) {
                    pushNamed(OnboardView.routeName);
                  } else {
                    login();
                  }
                },
              ),
            ),
          ),
          GoRoute(
            name: OnboardView.routeName,
            path: _routeMap.get(OnboardView.routeName),
            builder: (context, state) => const OnboardView(),
          ),
        ],
        urlPathStrategy: UrlPathStrategy.path,
        initialLocation: _routeMap.get(SplashView.routeName),
      );

  GoRouter get _loggedInRoutes => GoRouter(
        routes: [
          GoRoute(
            name: RootView.routeName,
            path: _routeMap.get(RootView.routeName),
            builder: (context, state) => const RootView(),
          ),
        ],
        urlPathStrategy: UrlPathStrategy.path,
        initialLocation: _routeMap.get(RootView.routeName),
      );
}

const Map<String, String> _routeMap = {
  OnboardView.routeName: '/${OnboardView.routeName}',
  RootView.routeName: '/${RootView.routeName}',
  SplashView.routeName: '/${SplashView.routeName}',
};

final oogwayRouterProvider = ChangeNotifierProvider<OogwayRouter>((ref) {
  return OogwayRouter();
});

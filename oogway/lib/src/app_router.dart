import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:oogway/src/common/extensions/map.dart';
import 'package:oogway/src/ui/home/home_view.dart';
import 'package:oogway/src/ui/onboard/onboard_view.dart';

class OogwayRouter extends ChangeNotifier {
  late var router = _loggedOutRoutes;

  Future<void> login() async {
    router = _loggedInRoutes;
    notifyListeners();
  }

  void logout() {
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
}

GoRouter get _loggedOutRoutes => GoRouter(
      routes: [
        GoRoute(
          name: OnboardView.routeName,
          path: _routeMap.get(OnboardView.routeName),
          builder: (context, state) => const OnboardView(),
        ),
      ],
      urlPathStrategy: UrlPathStrategy.path,
      initialLocation: _routeMap.get(OnboardView.routeName),
    );

GoRouter get _loggedInRoutes => GoRouter(
      routes: [
        GoRoute(
          name: HomeView.routeName,
          path: _routeMap.get(HomeView.routeName),
          builder: (context, state) => const HomeView(),
        ),
      ],
      urlPathStrategy: UrlPathStrategy.path,
      initialLocation: _routeMap.get(HomeView.routeName),
    );

const Map<String, String> _routeMap = {
  OnboardView.routeName: '/${OnboardView.routeName}',
  HomeView.routeName: '/${HomeView.routeName}',
};

final oogwayRouterProvider = ChangeNotifierProvider<OogwayRouter>((ref) {
  return OogwayRouter();
});

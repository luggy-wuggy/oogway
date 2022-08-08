import 'package:oogway/swagger_generated_code/charity_navigator.swagger.dart';
import 'package:riverpod/riverpod.dart';

final charityNavigatorApiProvider = Provider<CharityNavigator>(
  (ref) {
    final charityNavigator = CharityNavigator.create();

    return charityNavigator;
  },
);

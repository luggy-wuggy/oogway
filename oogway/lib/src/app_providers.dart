import 'package:oogway/swagger_generated_code/charity_navigator.swagger.dart';
import 'package:oogway_api/oogway_api.dart';
import 'package:riverpod/riverpod.dart';

final charityNavigatorApiProvider = Provider<OogwayApi>(
  (ref) {
    //final charityNavigator = CharityNavigator.create();

    final charityNavigator = OogwayApi();

    return charityNavigator;
  },
);

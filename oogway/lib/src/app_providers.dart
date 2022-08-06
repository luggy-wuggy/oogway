import 'package:oogway_api/oogway_api.dart';
import 'package:riverpod/riverpod.dart';

final oogwayApiProvider = Provider<OogwayApi>(
  (ref) {
    final oogwayApi = OogwayApi();

    return OogwayApi();
  },
);

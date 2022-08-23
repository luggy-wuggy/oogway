// import 'package:dio/dio.dart';

import 'package:dio/dio.dart';

extension ResponseExtensions<T> on Response<T> {
  bool get isOk => (statusCode ?? 0) >= 200 && (statusCode ?? 0) <= 299;

  bool get isConflict => (statusCode ?? 0) == 409;
}

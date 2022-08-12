import 'package:logger/logger.dart';

/// Singleton used for all Logging. For usage, see:
/// https://pub.dev/packages/logger
class Log extends Logger {
  static Log get instance => Log._internal();

  Log._internal()
      : super(
          filter: null,
          printer: PrettyPrinter(
            methodCount: 1,
            noBoxingByDefault: true,
          ),
          output: null,
        );

  @Deprecated('Please use Log.instance or the Logging mixin to add logging')
  factory Log() {
    return instance;
  }
}

mixin Logging {
  Log logger = Log.instance;
}



// extension LoggingExtensions on Log {
//   logApiError({
//     String message = 'API Error for request',
//     required DioError error,
//   }) {
//     e(message, error, error.stackTrace);
//     e(error.response);
//     e(error.response?.statusMessage);
//     e(error.response?.data);
//   }
// }

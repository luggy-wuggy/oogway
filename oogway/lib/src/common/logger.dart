import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/logger.dart';

class LoggerObserver extends ProviderObserver with Logging {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.i(
        "provider ${provider.name ?? provider.runtimeType} newValue: $newValue");
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';

final onboardFlowControllerProvider =
    ChangeNotifierProvider.autoDispose<FlowController>((ref) {
  throw UnimplementedError;
}, dependencies: [
  onboardAcionControllerProvider,
]);

enum OnboardFlowPageType {
  introduction,
  name,
  city,
  passion,
  finish,
}

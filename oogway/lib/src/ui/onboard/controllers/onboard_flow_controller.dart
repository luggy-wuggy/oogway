import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';

final onboardFlowControllerProvider =
    ChangeNotifierProvider<FlowController>((ref) {
  throw UnimplementedError;
});

enum OnboardFlowPageType {
  introduction,
  name,
  city,
  passion,
  finish,
}

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/account/sign_in_use_case.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';

class OnboardActionController extends ChangeNotifier {
  final Reader read;

  OnboardActionController({required this.read});

  late final SignInUseCase signInUseCase = read(signInUseCaseProvider);
  late final FlowController onboardFlowController =
      read(onboardFlowControllerProvider);

  // TODO: biz logic
  void submitName() {
    onboardFlowController.nextPage();
  }

  // TODO: biz logic
  void submitCity() {
    onboardFlowController.nextPage();
  }

  // TODO: biz logic
  void submitPassions() {
    onboardFlowController.nextPage();
  }

  void finishOnboard() async {
    await signInUseCase.call();
  }
}

final onboardAcionControllerProvider =
    ChangeNotifierProvider<OnboardActionController>(
  (ref) {
    return OnboardActionController(read: ref.read);
  },
);

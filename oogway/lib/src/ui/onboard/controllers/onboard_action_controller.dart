import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/logger.dart';

import 'package:oogway/src/domain/usecases/usecases.dart';
import 'package:oogway/src/models/user.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';

class OnboardActionController extends ChangeNotifier with Logging {
  final Reader read;

  OnboardActionController({required this.read});

  final OogwayUser user = OogwayUser();

  late final SignInUseCase signInUseCase = read(signInUseCaseProvider);
  late final FlowController onboardFlowController =
      read(onboardFlowControllerProvider);

  late final PassionSelectionController passionSelectionController =
      read(passionSelectionControllerProvider);

  // TODO: biz logic
  Future submitName({required String name}) async {
    user.name = name;
    logger.i("USER name submited as ${user.name}");
    onboardFlowController.nextPage();
  }

  // TODO: biz logic
  void submitCity() {
    onboardFlowController.nextPage();
  }

  // TODO: biz logic
  void submitPassions() {
    user.passions = passionSelectionController.selectedPassions;
    logger.i("Passions submited as ${user.passions}");

    onboardFlowController.nextPage();
  }

  void finishOnboard() async {
    await signInUseCase.call(user);
  }
}

final onboardAcionControllerProvider =
    ChangeNotifierProvider<OnboardActionController>(
  (ref) {
    return OnboardActionController(read: ref.read);
  },
);

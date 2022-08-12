import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/account/sign_in_use_case.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class FinishView extends ConsumerWidget {
  const FinishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        const Text(
          "You’re all set!\nNow it’s time to spread the love.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(flex: 1),
        Image.asset(
          'assets/images/finish.png',
          width: 340,
        ),
        const Spacer(flex: 1),
        OogwayLongButton(
          title: "Finish",
          onTap: () async {
            ref.read(onboardAcionControllerProvider).finishOnboard();
          },
        ),
      ],
    );
  }
}

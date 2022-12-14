import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_animation_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        const Text(
          "Hi there,\nI'm Oogway",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Your personal\nnonprofit guide",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        Consumer(
          builder: (context, ref, child) {
            return OogwayLongButton(
              onPressed: () {
                ref.read(onboardAnimationControllerProvider).forwardAnimation();
                ref.read(onboardFlowControllerProvider).nextPage();
              },
              backgroundColor: OogwayColors.kPrimaryLightColor,
              pressedColor: OogwayColors.kPrimaryLightColor,
              childColor: OogwayColors.kPrimaryDarkColor,
              title: "Hi Oogway!",
            );
          },
        )
      ],
    );
  }
}

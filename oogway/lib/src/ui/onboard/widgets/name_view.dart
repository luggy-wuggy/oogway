import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class NameView extends ConsumerWidget {
  const NameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 3),
        const Text(
          "So nice to meet you!\nWhat do your friends call you?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(flex: 2),
        const OogwayTextField(hintText: "Your nickname"),
        const Spacer(flex: 4),
        OogwayLongButton(
          title: "Continue",
          onPressed: () async {
            ref.read(onboardAcionControllerProvider).submitName();
          },
          backgroundColor: OogwayColors.kPrimaryLightColor,
          pressedColor: OogwayColors.kPrimaryLightColor,
          childColor: OogwayColors.kPrimaryDarkColor,
        ),
      ],
    );
  }
}

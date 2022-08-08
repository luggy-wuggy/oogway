import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class CityView extends ConsumerWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 3),
        const Text(
          "Let’s find the right charity.\nWhere do you live?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(flex: 2),
        const OogwayTextField(hintText: "City or zip code"),
        const Spacer(flex: 4),
        OogwayLongButton(
          title: "Continue",
          onTap: () async {
            await onboardFlowController.nextPage();
          },
        ),
      ],
    );
  }
}

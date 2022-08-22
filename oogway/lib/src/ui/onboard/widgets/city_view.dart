import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class CityView extends ConsumerStatefulWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CityViewState();
}

class _CityViewState extends ConsumerState<CityView> {
  late final TextEditingController locationTextController;

  @override
  void initState() {
    locationTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        OogwayTextField(
          hintText: "City or zip code",
          textEditingController: locationTextController,
        ),
        const SizedBox(height: 12),
        const Spacer(flex: 4),
        OogwayLongButton(
          title: "Continue",
          backgroundColor: OogwayColors.kPrimaryLightColor,
          pressedColor: OogwayColors.kPrimaryLightColor,
          childColor: OogwayColors.kPrimaryDarkColor,
          onPressed: () async {
            ref.read(onboardAcionControllerProvider).submitCity();
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    locationTextController.dispose();
    super.dispose();
  }
}

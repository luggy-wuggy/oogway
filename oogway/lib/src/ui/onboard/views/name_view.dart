import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class NameView extends ConsumerStatefulWidget {
  const NameView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NameViewState();
}

class _NameViewState extends ConsumerState<NameView>
    with AutomaticKeepAliveClientMixin {
  late final TextEditingController nameTextController;

  @override
  void initState() {
    nameTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
        OogwayTextField(
          hintText: "Your nickname",
          textEditingController: nameTextController,
        ),
        const Spacer(flex: 4),
        OogwayLongButton(
          title: "Continue",
          onPressed: () async {
            await ref
                .read(onboardAcionControllerProvider)
                .submitName(name: nameTextController.text);
          },
          backgroundColor: OogwayColors.kPrimaryLightColor,
          pressedColor: OogwayColors.kPrimaryLightColor,
          childColor: OogwayColors.kPrimaryDarkColor,
        ),
      ],
    );
  }

  @override
  void dispose() {
    nameTextController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

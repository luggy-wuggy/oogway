import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/string.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_animation_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/passion_pills.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class PassionView extends ConsumerWidget {
  const PassionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passionSelectionController =
        ref.watch(passionSelectionControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          const Text(
            "Let’s find the right charity.\nWhat are you passionate about?\n(select all that apply)",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: OogwayColors.kPrimaryLightColor,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 5,
                  runSpacing: 8,
                  children: passionSelectionController.selectedPassions
                      .map((e) => SelectedPassionPills(
                            title: e.enumToString(),
                            onTap: () {
                              ref
                                  .read(passionSelectionControllerProvider)
                                  .unselectPassion(e);
                            },
                          ))
                      .toList(),
                ),
                if (passionSelectionController.selectedPassions.isNotEmpty)
                  const SizedBox(height: 24),
                Wrap(
                  spacing: 5,
                  runSpacing: 8,
                  children: passionSelectionController.unselectedPassions
                      .map((e) => NotSelectedPassionPills(
                            title: e.enumToString(),
                            onTap: () {
                              ref
                                  .read(passionSelectionControllerProvider)
                                  .selectPassion(e);
                            },
                          ))
                      .toList(),
                )
              ],
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              return OogwayLongButton(
                title: "Continue",
                onPressed: () async {
                  ref
                      .read(onboardAnimationControllerProvider)
                      .reverseAnimation();
                  ref.read(onboardAcionControllerProvider).submitPassions();
                },
                backgroundColor: OogwayColors.kPrimaryLightColor,
                pressedColor: OogwayColors.kPrimaryLightColor,
                childColor: OogwayColors.kPrimaryDarkColor,
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

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
        SizedBox(
          width: 300,
          child: TextField(
            style: const TextStyle(
              color: OogwayColors.kPrimaryLightColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: OogwayColors.kPrimaryLightColor,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(24),
              fillColor: OogwayColors.kPrimaryTransparentDarkColor,
              filled: true,
              hintText: "Your nickname",
              hintStyle: TextStyle(
                color: OogwayColors.kPrimaryLightColor.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
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

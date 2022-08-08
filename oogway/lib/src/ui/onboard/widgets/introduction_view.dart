import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Spacer(flex: 2),
        Text(
          "Hi there,\nI'm Oogway",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Your personal\nnonprofit guide",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        OogwayLongButton(title: "Hi Oogway!")
      ],
    );
  }
}

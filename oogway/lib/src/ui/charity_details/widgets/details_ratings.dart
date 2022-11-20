import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/double_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DetailsRatings extends StatelessWidget {
  const DetailsRatings({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 12.0,
            percent: (charity.currentRating?.score ?? 0) / 100,
            progressColor: OogwayColors.kPrimaryLightBlueAccentColor,
            backgroundColor: OogwayColors.kPrimaryTransparentDarkColor,
            circularStrokeCap: CircularStrokeCap.round,
            // animateFromLastPercent: true,
            // animation: true,
            animationDuration: 2000,
            curve: Curves.easeInOutCubicEmphasized,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (charity.currentRating?.score ?? 0).convertToLetter,
                  style: const TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "overall\nrating",
                  style: TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Financial Rating',
                  style: TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                LinearPercentIndicator(
                  lineHeight: 15,
                  percent:
                      (charity.currentRating?.financialRating?.score ?? 0) /
                          100,
                  backgroundColor: OogwayColors.kPrimaryTransparentDarkColor,
                  progressColor: OogwayColors.kPrimaryLightGreenColor,
                  barRadius: const Radius.circular(32),
                  padding: EdgeInsets.zero,
                  // animateFromLastPercent: true,
                  // animation: true,
                  animationDuration: 2500,
                  curve: Curves.easeInOutCubicEmphasized,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Acccountability Rating',
                  style: TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                LinearPercentIndicator(
                  lineHeight: 15,
                  percent:
                      (charity.currentRating?.financialRating?.score ?? 0) /
                          100,
                  backgroundColor: OogwayColors.kPrimaryTransparentDarkColor,
                  progressColor: OogwayColors.kPrimaryGreenColor,
                  barRadius: const Radius.circular(32),
                  padding: EdgeInsets.zero,
                  // animateFromLastPercent: true,
                  // animation: true,
                  animationDuration: 2900,
                  curve: Curves.easeInOutCubicEmphasized,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

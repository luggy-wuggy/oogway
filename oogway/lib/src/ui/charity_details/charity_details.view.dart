import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/charity_extension.dart';
import 'package:oogway/src/common/extensions/double_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/controllers/favicon_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/widgets.dart';
import 'package:oogway/src/ui/widgets/heart.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CharityDetailsView extends ConsumerWidget {
  const CharityDetailsView({
    super.key,
    required this.charity,
  });

  final Charity charity;

  static const String routeName = 'charity-details';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charityIcon = ref.watch(faviconProvider(charity.websiteURL ?? ""));

    print(((charity.currentRating?.score ?? 0) / 100));

    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    OogwayIconButton(
                      onTap: () {
                        ref.read(oogwayRouterProvider).pop();
                      },
                      icon: Icons.close,
                    ),
                    const Spacer(),
                    const OogwayFavoriteHeart(),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 62,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      decoration: const BoxDecoration(
                        color: OogwayColors.kPrimaryTransparentDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: charityIcon.when(
                        data: (data) {
                          if (data == null || data.isEmpty) {
                            Icon(
                              charity.charityIcon,
                              color: OogwayColors.kPrimaryLightColor,
                            );
                          }

                          return Image.network(
                            data ?? "",
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                charity.charityIcon,
                                color: OogwayColors.kPrimaryLightColor,
                              );
                            },
                          );
                        },
                        error: (_, __) {
                          return Icon(
                            charity.charityIcon,
                            color: OogwayColors.kPrimaryLightColor,
                          );
                        },
                        loading: () {
                          return Icon(
                            charity.charityIcon,
                            color: OogwayColors.kPrimaryLightColor,
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: AutoSizeText(
                        charity.charityName ?? "",
                        style: const TextStyle(
                          color: OogwayColors.kPrimaryLightColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    PassionPills(
                      title: charity.charityCategoryName,
                      pillColor: OogwayColors.kPrimaryTransparentDarkColor,
                      textColor: OogwayColors.kPrimaryLightColor,
                      titleFontSize: 15,
                    ),
                    const SizedBox(width: 8),
                    PassionPills(
                      title: charity.cause?.causeName ?? "",
                      pillColor: OogwayColors.kPrimaryTransparentDarkColor,
                      textColor: OogwayColors.kPrimaryLightColor,
                      titleFontSize: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Mission",
                  style: TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  charity.mission ?? "",
                  style: const TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                    fontSize: 15,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "read more",
                    style: TextStyle(
                      color: OogwayColors.kLightBlue,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 12.0,
                        percent: (charity.currentRating?.score ?? 0) / 100,
                        progressColor:
                            OogwayColors.kPrimaryLightBlueAccentColor,
                        backgroundColor:
                            OogwayColors.kPrimaryTransparentDarkColor,
                        circularStrokeCap: CircularStrokeCap.round,
                        animateFromLastPercent: true,
                        animation: true,
                        animationDuration: 2000,
                        curve: Curves.easeInOutCubicEmphasized,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (charity.currentRating?.score ?? 0)
                                  .convertToLetter,
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
                              lineHeight: 20,
                              percent: (charity.currentRating?.financialRating
                                          ?.score ??
                                      0) /
                                  100,
                              backgroundColor:
                                  OogwayColors.kPrimaryTransparentDarkColor,
                              progressColor:
                                  OogwayColors.kPrimaryLightGreenColor,
                              barRadius: const Radius.circular(32),
                              padding: EdgeInsets.zero,
                              animateFromLastPercent: true,
                              animation: true,
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
                              lineHeight: 20,
                              percent: (charity.currentRating?.financialRating
                                          ?.score ??
                                      0) /
                                  100,
                              backgroundColor:
                                  OogwayColors.kPrimaryTransparentDarkColor,
                              progressColor: OogwayColors.kPrimaryGreenColor,
                              barRadius: const Radius.circular(32),
                              padding: EdgeInsets.zero,
                              animateFromLastPercent: true,
                              animation: true,
                              animationDuration: 2900,
                              curve: Curves.easeInOutCubicEmphasized,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

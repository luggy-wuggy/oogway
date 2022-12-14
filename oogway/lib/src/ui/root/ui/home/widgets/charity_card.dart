import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/charity_extension.dart';
import 'package:oogway/src/common/extensions/double_extension.dart';
import 'package:oogway/src/common/extensions/string_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/charity_details/charity_details.view.dart';
import 'package:oogway/src/ui/controllers/favicon_controller.dart';
import 'package:oogway/src/ui/widgets/heart.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCharityCard extends StatelessWidget {
  const LoadingCharityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1100),
      baseColor: OogwayColors.kPrimaryTransparentDarkColor,
      highlightColor: OogwayColors.kPrimaryDarkColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: OogwayColors.kPrimaryTransparentDarkColor,
                width: 3,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: OogwayColors.kPrimaryTransparentDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 18,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: OogwayColors.kPrimaryTransparentDarkColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 13,
                          width: 80,
                          decoration: const BoxDecoration(
                            color: OogwayColors.kPrimaryTransparentDarkColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: OogwayColors.kPrimaryTransparentDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 38,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: OogwayColors.kPrimaryTransparentDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      color: OogwayColors.kPrimaryTransparentDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class CharityCard extends ConsumerWidget {
  const CharityCard({
    Key? key,
    required this.charity,
  }) : super(key: key);

  final Charity charity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faviconCharity = ref.watch(faviconProvider(charity.websiteURL ?? ""));

    return GestureDetector(
      onTap: () {
        ref.read(oogwayRouterProvider).pushNamed(
              CharityDetailsView.routeName,
              extra: charity,
            );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 3,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: OogwayColors.kPrimaryTransparentDarkColor,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: faviconCharity.when(
                          data: (favicon) {
                            if (favicon == null || favicon.isEmpty) {
                              Icon(
                                charity.charityIcon,
                                color: OogwayColors.kPrimaryLightColor,
                              );
                            }

                            return Image.network(
                              favicon ?? "",
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
                      const SizedBox(width: 15),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (charity.charityName ?? "").useCorrectEllipsis(),
                              style: const TextStyle(
                                color: OogwayColors.kPrimaryLightColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "${charity.mailingAddress?.city ?? ""}, ${charity.mailingAddress?.stateOrProvince ?? ""}",
                              style: const TextStyle(
                                color: OogwayColors.kPrimaryLightColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: const BoxDecoration(
                            color: OogwayColors.kPrimaryTransparentDarkColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            (charity.currentRating?.score ?? 0).convertToLetter,
                            style: const TextStyle(
                              color: OogwayColors.kPrimaryLightColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Flexible(
                          child: Text(
                            charity.mission ?? "",
                            style: TextStyle(
                              color: OogwayColors.kPrimaryLightColor
                                  .withOpacity(0.8),
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 16,
            right: 40,
            child: OogwayFavoriteHeart(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OogwayPageIndicator extends ConsumerWidget {
  const OogwayPageIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

    return SafeArea(
      bottom: true,
      child: Stack(
        children: [
          SmoothPageIndicator(
            controller: onboardFlowController.pageController,
            effect: WormEffect(
              dotHeight: 14,
              dotWidth: 14,
              activeDotColor: OogwayColors.kPrimaryLightColor,
              dotColor: OogwayColors.kPrimaryLightColor.withOpacity(0.5),
            ),
            count: onboardFlowController.flowTypeList.length,
          ),
          Positioned(
            left: 0,
            child: Container(
              height: 14,
              width: 14,
              color: OogwayColors.kPrimaryDarkColor,
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 14,
              width: 14,
              color: OogwayColors.kPrimaryDarkColor,
            ),
          ),
        ],
      ),
    );
  }
}

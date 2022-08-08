import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/arrow_back.dart';
import 'package:oogway/src/ui/onboard/widgets/introduction_view.dart';
import 'package:oogway/src/ui/onboard/widgets/page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  late final PageController pageController;
  late final List<Enum> flowTypeList;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    flowTypeList = OnboardFlowPageType.values;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        onboardFlowControllerProvider.overrideWithValue(
          FlowController(
            pageController: pageController,
            flowTypeList: flowTypeList,
          ),
        )
      ],
      child: const _OnboardContent(),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class _OnboardContent extends ConsumerWidget {
  const _OnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 100,
            ),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: onboardFlowController.pageController,
              children: const [
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: onboardFlowController.pageController,
            builder: ((context, child) {
              late double translate;

              if ((onboardFlowController.pageController.page ?? 0) >= 0 &&
                  (onboardFlowController.pageController.page ?? 0) <= 1) {
                translate = lerpDouble(
                    -200, 24, onboardFlowController.pageController.page ?? 0)!;
              } else {
                translate = 24;
              }

              return Positioned(
                left: 0,
                top: 60,
                child: Transform.translate(
                  offset: Offset(translate, 0),
                  child: OogwayArrowBack(
                    onTap: () {
                      onboardFlowController.previousPage();
                    },
                  ),
                ),
              );
            }),
          ),
          AnimatedBuilder(
            animation: onboardFlowController.pageController,
            builder: (context, child) {
              late double translate;

              if (((onboardFlowController.pageController.page ?? 0) >= 0 &&
                  (onboardFlowController.pageController.page ?? 0) <= 1)) {
                translate = lerpDouble(
                    300, -12, onboardFlowController.pageController.page ?? 0)!;
              } else {
                translate = -12;
              }

              return Positioned(
                bottom: 0,
                child: Transform.translate(
                  offset: Offset(0, translate),
                  child: const OogwayPageIndicator(),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: onboardFlowController.pageController,
            builder: (context, child) {
              late double translate;
              late double scale;

              if (((onboardFlowController.pageController.page ?? 0) >= 0 &&
                  (onboardFlowController.pageController.page ?? 0) <= 1)) {
                translate = lerpDouble(-150, -340,
                    onboardFlowController.pageController.page ?? 0)!;
                scale = lerpDouble(
                    1, 0.8, onboardFlowController.pageController.page ?? 0)!;
              } else {
                translate = -340;
                scale = 0.8;
              }

              return Transform.scale(
                scale: scale,
                alignment: Alignment.topCenter,
                child: Transform.translate(
                  offset: Offset(0, translate),
                  child: Image.asset(
                    'assets/images/turtle.png',
                    height: 125,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

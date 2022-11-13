import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_animation_controller.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/arrow_back.dart';
import 'package:oogway/src/ui/onboard/widgets/page_indicator.dart';

import 'views/views.dart';

class OnboardView extends ConsumerStatefulWidget {
  const OnboardView({Key? key}) : super(key: key);

  static const String routeName = 'onboard';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardViewState();

  // @override
  // State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends ConsumerState<OnboardView>
    with SingleTickerProviderStateMixin {
  late final PageController pageController;
  late final List<Enum> flowTypeList;
  late final OnboardAnimationController animationController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    flowTypeList = OnboardFlowPageType.values;
    animationController = OnboardAnimationController(vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        onboardFlowControllerProvider.overrideWithProvider(
          ChangeNotifierProvider.autoDispose<FlowController>(
            (ref) {
              return FlowController(
                pageController: pageController,
                flowTypeList: flowTypeList,
              );
            },
          ),
        ),
        onboardAnimationControllerProvider
            .overrideWithValue(animationController),
        onboardAcionControllerProvider,
      ],
      child: const _OnboardContent(),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

class _OnboardContent extends ConsumerWidget {
  const _OnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);
    final onboardAnimationController =
        ref.watch(onboardAnimationControllerProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                NameView(),
                CityView(),
                PassionView(),
                FinishView(),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: onboardAnimationController,
            builder: ((context, child) {
              double translateX =
                  lerpDouble(-200, 24, onboardAnimationController.value) ?? 24;

              if (onboardFlowController.currentPage ==
                      OnboardFlowPageType.finish ||
                  onboardFlowController.currentPage ==
                      OnboardFlowPageType.passion) {
                translateX = 24;
              }

              return Positioned(
                left: 0,
                top: 60,
                child: Transform.translate(
                  offset: Offset(translateX, 0),
                  child: OogwayArrowBack(
                    onTap: () async {
                      if (onboardFlowController.currentPage ==
                          OnboardFlowPageType.name) {
                        onboardAnimationController.reverseAnimation();
                      }
                      if (onboardFlowController.currentPage ==
                          OnboardFlowPageType.finish) {
                        onboardAnimationController.forwardAnimation();
                      }
                      onboardFlowController.previousPage();
                    },
                  ),
                ),
              );
            }),
          ),
          AnimatedBuilder(
            animation: onboardAnimationController,
            builder: (context, child) {
              late double translateY =
                  lerpDouble(180, -12, onboardAnimationController.value) ?? -12;

              return Positioned(
                bottom: 0,
                child: Transform.translate(
                  offset: Offset(0, translateY),
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
                translate = lerpDouble(-150, -360,
                    onboardFlowController.pageController.page ?? 0)!;
                scale = lerpDouble(
                    1, 0.72, onboardFlowController.pageController.page ?? 0)!;
              } else {
                translate = -360;
                scale = 0.72;
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

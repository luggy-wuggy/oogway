import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/introduction_view.dart';
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
}

class _OnboardContent extends StatelessWidget {
  const _OnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              controller: PageController(),
              children: const [
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
                IntroductionView(),
              ],
            ),
          ),
          const Positioned(
            left: 24,
            top: 60,
            child: Icon(
              Icons.arrow_back,
              color: OogwayColors.kPrimaryLightColor,
              size: 30,
            ),
          ),
          Positioned(
            bottom: 12,
            child: SafeArea(
              bottom: true,
              child: SmoothPageIndicator(
                effect: WormEffect(
                  dotHeight: 14,
                  dotWidth: 14,
                  activeDotColor: OogwayColors.kPrimaryLightColor,
                  dotColor: OogwayColors.kPrimaryLightColor.withOpacity(0.5),
                ),
                controller: PageController(),
                count: 3,
              ),
            ),
          ),
          // Image.asset(
          //   'assets/images/turtle.png',
          //   height: 120,
          // ),
        ],
      ),
    );
  }
}

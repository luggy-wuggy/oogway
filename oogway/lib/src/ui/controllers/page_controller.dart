import 'package:flutter/material.dart';

/// This [FlowController] is responsible for
/// driving the Pageview of the flow. (next/previous/close).
class FlowController<T extends Enum> extends ChangeNotifier {
  FlowController({
    required this.pageController,
    required this.flowTypeList,
  }) : currentPage = flowTypeList.first;
  final PageController pageController;
  final List<T> flowTypeList;
  T currentPage;

  int get currentIndex => flowTypeList.indexOf(currentPage);

  Future closeFlow() async {
    pageController.jumpToPage(0);
    currentPage = flowTypeList.first;
    notifyListeners();
  }

  Future nextPage() async {
    if (currentPage == flowTypeList.last) {
      return;
    }
    pageController.nextPage(
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
    currentPage = flowTypeList[currentIndex + 1];
    notifyListeners();
  }

  Future previousPage() async {
    if (currentPage == flowTypeList.first) {
      return;
    }
    pageController.previousPage(
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
    currentPage = flowTypeList[currentIndex - 1];
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

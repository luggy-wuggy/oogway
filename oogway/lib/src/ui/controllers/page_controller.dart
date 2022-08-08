import 'package:flutter/material.dart';

/// This [FlowController] is responsible for
/// driving the Pageview of the flow. (next/previous/close).
class FlowController<T extends Enum> extends ChangeNotifier {
  FlowController({
    required this.pageController,
    required this.flowTypeList,
  }) : _currentPage = flowTypeList.first;
  final PageController pageController;
  final List<T> flowTypeList;
  T _currentPage;

  T get currentPage => _currentPage;
  int get currentIndex => flowTypeList.indexOf(_currentPage);

  double get progressPercentage => (currentIndex + 1) / flowTypeList.length;

  Future closeFlow() async {
    pageController.jumpToPage(0);
    _currentPage = flowTypeList.first;
    notifyListeners();
  }

  Future nextPage() async {
    if (_currentPage == flowTypeList.last) {
      return;
    }
    pageController.nextPage(
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
    _currentPage = flowTypeList[currentIndex + 1];
    notifyListeners();
  }

  Future previousPage() async {
    if (_currentPage == flowTypeList.first) {
      return;
    }
    pageController.previousPage(
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
    _currentPage = flowTypeList[currentIndex - 1];
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

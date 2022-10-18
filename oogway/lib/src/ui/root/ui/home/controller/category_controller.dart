import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';

final categoryControllerProvider =
    ChangeNotifierProvider.autoDispose<CategoryFlowController>((ref) {
  throw UnimplementedError;
}, dependencies: [
  onboardAcionControllerProvider,
]);

class CategoryFlowController extends FlowController<Passion> {
  CategoryFlowController({
    required super.pageController,
    required super.flowTypeList,
    required this.ref,
  });

  final Ref ref;

  void selectCategory(Passion selectedCategory) {
    if (currentPage == selectedCategory) {
      return;
    }

    final indexSelectedCategory = flowTypeList.indexOf(selectedCategory);
    final indexCurrentCategory = flowTypeList.indexOf(currentPage);

    if (indexSelectedCategory + 1 == indexCurrentCategory ||
        indexSelectedCategory - 1 == indexCurrentCategory) {
      pageController.animateToPage(
        indexSelectedCategory,
        duration: const Duration(milliseconds: 970),
        curve: Curves.easeInOutCubicEmphasized,
      );
    } else {
      pageController.jumpToPage(indexSelectedCategory);
    }

    currentPage = selectedCategory;
    notifyListeners();
  }

  void swipeCategory(Passion selectedCategory) {
    if (currentPage == selectedCategory) {
      return;
    }
    currentPage = selectedCategory;
    notifyListeners();
  }
}

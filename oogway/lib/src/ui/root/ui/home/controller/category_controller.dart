import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';

final catgoryControllerProvider =
    ChangeNotifierProvider<CategoryFlowController>((ref) {
  throw UnimplementedError;
}, dependencies: [
  onboardAcionControllerProvider,
]);

class CategoryFlowController extends FlowController {
  CategoryFlowController({
    required super.pageController,
    required super.flowTypeList,
  }) : _selectedCategory = flowTypeList[pageController.initialPage];

  late Enum _selectedCategory;

  Enum get selectedCategory => _selectedCategory;

  void selectCategory(Enum i) {
    if (_selectedCategory == i) {
      return;
    }
    if (i.index + 1 == _selectedCategory.index ||
        i.index - 1 == _selectedCategory.index) {
      pageController.animateToPage(
        i.index,
        duration: const Duration(milliseconds: 970),
        curve: Curves.easeInOutCubicEmphasized,
      );
    } else {
      pageController.jumpToPage(i.index);
    }

    _selectedCategory = i;
    notifyListeners();
  }

  void swipeCategory(Enum i) {
    if (_selectedCategory == i) {
      return;
    }
    _selectedCategory = i;
    notifyListeners();
  }
}

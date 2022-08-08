import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class OnboardAnimationController extends AnimationController {
  OnboardAnimationController({required super.vsync});

  Future<void> forwardAnimation() async {
    animateTo(
      1,
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
  }

  Future<void> reverseAnimation() async {
    animateBack(
      0,
      duration: const Duration(milliseconds: 970),
      curve: Curves.easeInOutCubicEmphasized,
    );
  }
}

final onboardAnimationControllerProvider =
    Provider<OnboardAnimationController>((ref) {
  throw UnimplementedError;
});

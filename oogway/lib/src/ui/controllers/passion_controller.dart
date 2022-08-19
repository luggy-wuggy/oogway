import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

class PassionSelectionController extends ChangeNotifier {
  List<Passion> unselectedPassions = Passion.values.toList();
  List<Passion> selectedPassions = [];

  void selectPassion(Passion value) {
    if (!selectedPassions.contains(value)) {
      return;
    }
    selectedPassions.add(value);
    unselectedPassions.remove(value);
    notifyListeners();
  }

  void unselectPassion(Passion value) {
    if (unselectedPassions.contains(value)) {
      return;
    }
    selectedPassions.remove(value);
    unselectedPassions.add(value);
    notifyListeners();
  }
}

final passionSelectionControllerProvider =
    ChangeNotifierProvider<PassionSelectionController>((ref) {
  return PassionSelectionController();
});

enum Passion {
  animals,
  arts,
  publicPolicy,
  health,
  education,
  environment,
  religion,
  civilRights,
  communityDevelopment,
}

extension ToString on Passion {
  String enumToString() {
    return toString().split('Passion.')[1].sentenceCase.toTitleCase();
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

class PassionSelectionController extends ChangeNotifier {
  final List<Passion> _unselectedPassions = Passion.values.toList();
  final List<Passion> _selectedPassions = [];

  List<Passion> get selectedPassions {
    // Returns an alphabetical list
    _selectedPassions.sort(
      (a, b) {
        return a.enumToString()[0].compareTo(b.enumToString()[0]);
      },
    );

    return _selectedPassions;
  }

  List<Passion> get unselectedPassions {
    // Returns an alphabetical list
    _unselectedPassions.sort(
      (a, b) {
        return a.enumToString()[0].compareTo(b.enumToString()[0]);
      },
    );

    return _unselectedPassions;
  }

  void selectPassion(Passion value) {
    if (_selectedPassions.contains(value)) {
      return;
    }
    _selectedPassions.add(value);
    _unselectedPassions.remove(value);
    notifyListeners();
  }

  void unselectPassion(Passion value) {
    if (_unselectedPassions.contains(value)) {
      return;
    }
    _selectedPassions.remove(value);
    _unselectedPassions.add(value);
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
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/string.dart';

class PassionSelectionController extends ChangeNotifier {
  List<Passion> _unselectedPassions = Passion.values.toList();
  List<Passion> _selectedPassions = [];

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
    _unselectedPassions.remove(Passion.forYou);
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

  void refresh() {
    _unselectedPassions = Passion.values.toList();
    _selectedPassions = [];
    notifyListeners();
  }
}

final passionSelectionControllerProvider =
    ChangeNotifierProvider<PassionSelectionController>((ref) {
  return PassionSelectionController();
});

enum Passion {
  forYou,
  animals,
  arts,
  communityDevelopment,
  education,
  environment,
  health,
  humanServices,
  civilRights,
  international,
  religion,
  researchAndPublicPolicy,
}

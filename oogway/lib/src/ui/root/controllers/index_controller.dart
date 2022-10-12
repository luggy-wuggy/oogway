import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';

class BottomNavIndexNotifier extends StateNotifier<RootPages> {
  BottomNavIndexNotifier({required this.page}) : super(page);

  final RootPages page;

  void onTap(int value) {
    state = RootPages.values[value];
  }
}

final bottomNavIndexProvider =
    StateNotifierProvider<BottomNavIndexNotifier, RootPages>((ref) {
  return BottomNavIndexNotifier(page: RootPages.home);
});

enum RootPages {
  home,
  search,
  settings,
}

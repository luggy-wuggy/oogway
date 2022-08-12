import 'package:riverpod/riverpod.dart';

class BottomNavIndexNotifier extends StateNotifier<int> {
  BottomNavIndexNotifier({required this.initialIndex}) : super(initialIndex);

  final int initialIndex;

  void onTap(int value) {
    state = value;
  }
}

final bottomNavIndexProvider =
    StateNotifierProvider<BottomNavIndexNotifier, int>((ref) {
  return BottomNavIndexNotifier(initialIndex: 0);
});

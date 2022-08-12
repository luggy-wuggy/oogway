import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/root/controllers/index_controller.dart';

class RootView extends ConsumerWidget {
  const RootView({Key? key}) : super(key: key);

  static const String routeName = 'root';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNav = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      appBar: AppBar(
        titleSpacing: 24,
        backgroundColor: OogwayColors.kPrimaryDarkColor,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Home',
              style: TextStyle(
                  fontSize: 30, color: OogwayColors.kPrimaryLightColor),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/turtle.png',
              height: 35,
              width: 35,
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: bottomNav,
        children: const [
          Center(child: Text("Home")),
          Center(child: Text("Search")),
          Center(child: Text("Settings")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          ref.read(bottomNavIndexProvider.notifier).onTap(value);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: OogwayColors.kPrimaryDarkColor,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

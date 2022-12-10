import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/string_extension.dart';
import 'package:oogway/src/ui/root/controllers/index_controller.dart';
import 'package:oogway/src/ui/root/ui/home/home_view.dart';
import 'package:oogway/src/ui/root/ui/search/search_view.dart';
import 'package:oogway/src/ui/root/ui/settings/settings_view.dart';
import 'dart:math' as math; // import this

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
            Text(
              bottomNav.enumToString(),
              style: const TextStyle(
                fontSize: 30,
                color: OogwayColors.kPrimaryLightColor,
              ),
            ),
            const Spacer(),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Image.asset(
                'assets/images/turtle.png',
                height: 35,
                width: 35,
              ),
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: RootPages.values.indexOf(bottomNav),
        children: const [
          HomeView(),
          SearchView(),
          SettingsView(),
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
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_rounded,
              color: bottomNav == RootPages.home
                  ? OogwayColors.kPrimaryLightColor
                  : OogwayColors.kPrimaryLightColor.withOpacity(0.4),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search_rounded,
              color: bottomNav == RootPages.search
                  ? OogwayColors.kPrimaryLightColor
                  : OogwayColors.kPrimaryLightColor.withOpacity(0.4),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.settings_rounded,
              color: bottomNav == RootPages.settings
                  ? OogwayColors.kPrimaryLightColor
                  : OogwayColors.kPrimaryLightColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

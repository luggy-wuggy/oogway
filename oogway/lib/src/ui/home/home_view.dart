import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      //bottomNavigationBar: ,
    );
  }
}

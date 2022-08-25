import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:oogway/src/common/constants/ui.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key, required this.executeAfterLayout})
      : super(key: key);

  static const String routeName = 'splash';

  final Future<void> Function(BuildContext)? executeAfterLayout;

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with AfterLayoutMixin<SplashView> {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    await widget.executeAfterLayout?.call(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      body: Center(
        child: Image.asset(
          'assets/images/turtle.png',
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}

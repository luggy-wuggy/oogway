import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class SelectedPassionPills extends StatelessWidget {
  const SelectedPassionPills({Key? key, required this.title, this.onTap})
      : super(key: key);

  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return PassionPills(
      title: title,
      pillColor: OogwayColors.kPrimaryLightColor,
      textColor: OogwayColors.kPrimaryDarkColor,
      onTap: () {
        onTap?.call();
      },
    );
  }
}

class NotSelectedPassionPills extends StatelessWidget {
  const NotSelectedPassionPills({Key? key, required this.title, this.onTap})
      : super(key: key);

  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return PassionPills(
      title: title,
      pillColor: OogwayColors.kPrimaryTransparentDarkColor,
      textColor: OogwayColors.kPrimaryLightColor,
      onTap: () {
        onTap?.call();
      },
    );
  }
}

class PassionPills extends StatelessWidget {
  const PassionPills(
      {Key? key,
      this.onTap,
      required this.title,
      required this.pillColor,
      required this.textColor})
      : super(key: key);

  final String title;
  final Color pillColor;
  final Color textColor;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: pillColor,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class HomeCategoryPills extends StatelessWidget {
  const HomeCategoryPills(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final String title;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return PassionPills(
      title: title,
      pillColor: isSelected
          ? OogwayColors.kPrimaryLightColor
          : OogwayColors.kPrimaryTransparentDarkColor,
      textColor: isSelected
          ? OogwayColors.kPrimaryDarkColor
          : OogwayColors.kPrimaryLightColor,
      titleFontSize: 16,
      verticalPadding: 8,
      horizontalPadding: 16,
      onTap: () {
        onTap();
      },
    );
  }
}

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
  const PassionPills({
    Key? key,
    this.onTap,
    required this.title,
    required this.pillColor,
    required this.textColor,
    this.horizontalPadding = 20,
    this.verticalPadding = 10,
    this.titleFontSize = 18,
  }) : super(key: key);

  final String title;
  final double titleFontSize;
  final Color pillColor;
  final Color textColor;
  final Function? onTap;
  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: pillColor,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: titleFontSize,
            color: textColor,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}

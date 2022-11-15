import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class OogwayIconButton extends StatelessWidget {
  const OogwayIconButton({
    Key? key,
    this.onTap,
    required this.icon,
  }) : super(key: key);

  final Function? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Icon(
        icon,
        color: OogwayColors.kPrimaryLightColor,
        size: 30,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class OogwayLongButton extends StatelessWidget {
  const OogwayLongButton({Key? key, required this.title, this.onTap})
      : super(key: key);

  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        height: 70,
        width: 250,
        decoration: const BoxDecoration(
          color: OogwayColors.kPrimaryLightColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: OogwayColors.kPrimaryDarkColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

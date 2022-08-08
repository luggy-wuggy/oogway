import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class OogwayArrowBack extends StatelessWidget {
  const OogwayArrowBack({Key? key, this.onTap}) : super(key: key);

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: const Icon(
        Icons.arrow_back,
        color: OogwayColors.kPrimaryLightColor,
        size: 30,
      ),
    );
  }
}

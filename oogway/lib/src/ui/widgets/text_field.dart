import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/ui/device_padding.dart';

class OogwayTextField extends StatelessWidget {
  const OogwayTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    this.onTap,
  }) : super(key: key);

  static const double textFieldWidth = 300;

  final String hintText;
  final TextEditingController textEditingController;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        onTap?.call();
      },
      child: SizedBox(
        width: textFieldWidth,
        child: TextField(
          enabled: false,
          controller: textEditingController,
          style: const TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          cursorColor: OogwayColors.kPrimaryLightColor,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(24),
            fillColor: OogwayColors.kPrimaryTransparentDarkColor,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: OogwayColors.kPrimaryLightColor.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: OogwayColors.kPrimaryTransparentDarkColor,
                width: 3,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: OogwayColors.kPrimaryTransparentDarkColor,
                width: 3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: OogwayColors.kPrimaryTransparentDarkColor,
                width: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

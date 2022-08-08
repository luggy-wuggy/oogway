import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class OogwayTextField extends StatelessWidget {
  const OogwayTextField({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
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
    );
  }
}

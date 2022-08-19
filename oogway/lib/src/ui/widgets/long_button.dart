import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OogwayLongButton extends StatefulWidget {
  final String? title;
  final Color backgroundColor;
  final Color pressedColor;
  final Color childColor;
  final Color borderColor;
  final Color? disabledColor;
  final double? width;
  final IconData? icon;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;

  const OogwayLongButton({
    Key? key,
    this.title,
    required this.backgroundColor,
    required this.pressedColor,
    required this.childColor,
    this.disabledColor,
    this.borderColor = Colors.transparent,
    this.isLoading = false,
    this.isDisabled = false,
    this.onPressed,
    this.icon,
    this.width,
  }) : super(key: key);

  @override
  State<OogwayLongButton> createState() => _OogwayLongButtonState();
}

class _OogwayLongButtonState extends State<OogwayLongButton> {
  bool _isPressDown = false;
  static const double buttonHeight = 70;
  static const double buttonWidth = 250;

  static const double scaleDownFx = 0.95;
  static const int buttonScaleDuration = 350;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: buttonHeight,
      width: buttonWidth,
      child: GestureDetector(
        onTapCancel: widget.isDisabled
            ? null
            : () {
                if (!widget.isDisabled) {
                  setState(() => _isPressDown = false);
                }
              },
        onTapDown: widget.isDisabled
            ? null
            : (tapDownDetails) async {
                if (!widget.isDisabled) {
                  setState(() => _isPressDown = true);
                }
              },
        onTapUp: widget.isDisabled
            ? null
            : (tapUpDetails) async {
                if (!widget.isDisabled) {
                  if (widget.onPressed != null) {
                    setState(() => _isPressDown = false);
                    widget.onPressed?.call();
                    HapticFeedback.mediumImpact();
                  }
                }
              },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: buttonScaleDuration),
          curve: Curves.easeInOutCubicEmphasized,
          width: _shouldScaleButton ? (buttonWidth * scaleDownFx) : buttonWidth,
          height:
              _shouldScaleButton ? (buttonHeight * scaleDownFx) : buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(_shouldScaleButton ? 12 : 10),
            ),
            color: _buttonColor,
            border: Border.all(color: widget.borderColor),
          ),
          alignment: Alignment.center,
          child: widget.isLoading
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: widget.childColor,
                    strokeWidth: 3,
                  ),
                )
              : widget.icon != null
                  ? Icon(
                      widget.icon,
                      color: widget.childColor,
                    )
                  : Text(
                      widget.title ?? "",
                      style: TextStyle(
                        color: widget.childColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
        ),
      ),
    );
  }

  bool get isDisabled => widget.isDisabled;

  bool get _shouldScaleButton {
    return _isPressDown || widget.isLoading;
  }

  Color get _buttonColor {
    if (widget.isDisabled) {
      return widget.disabledColor ?? Colors.grey;
    } else {
      if (_isPressDown || widget.isLoading) {
        return widget.pressedColor;
      } else {
        return widget.backgroundColor;
      }
    }
  }
}

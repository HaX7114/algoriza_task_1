import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  final onPressed;
  final text;
  final textColor;
  final textSize;
  final fillColor;
  final fontWeight;
  final shadow;
  final buttonWidth;
  final borderRadius;
  final height;

  const MyButton(
      {Key? key,
      this.text,
      this.height,
      this.buttonWidth,
      this.textSize,
      this.fontWeight,
      this.shadow,
      this.textColor,
      this.fillColor,
      this.borderRadius,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 60.0,
      width: buttonWidth ?? double.infinity,
      child: RawMaterialButton(
        elevation: shadow ?? 0.0,
        focusElevation: 0.0,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        onPressed: onPressed,
        fillColor: fillColor ?? K_blackColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? K_radius)),
        child: MyText(
          text: text,
          size: textSize ?? 15.0,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: textColor ?? K_blackColor,
        ),
      ),
    );
  }
}

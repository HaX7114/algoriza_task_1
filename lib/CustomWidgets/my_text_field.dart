import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final hintText;
  final hintTextColor;
  final isEmailField;
  final isPasswordField;
  final labelText;
  final labelTextColor;
  bool obscureText;
  final prefixIcon;
  Icon? suffixIcon;
  final borderColor;
  final maxLength;
  final borderRadius;
  final validatorText;
  ValueChanged<String>? onChange;
  final TextEditingController textController;

  MyTextField({
    Key? key,
    this.hintText,
    this.hintTextColor,
    this.labelText,
    this.labelTextColor,
    this.maxLength,
    this.isEmailField = false, //default,
    this.isPasswordField = false, //default,
    this.obscureText = false,
    required this.borderColor,
    required this.validatorText,
    this.prefixIcon,
    this.suffixIcon,
    required this.textController,
    this.borderRadius,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: isPasswordField ? true : obscureText,
      maxLength: maxLength,
      validator: (value) {
        if (isEmailField) {
        } else if (isPasswordField) {
        } else {
          if (value == null || value.isEmpty) {
            return validatorText;
          }
        }
        return null;
      },
      onChanged: onChange,
      style: GoogleFonts.poppins(
        color: labelTextColor ?? K_blackColor,
        fontSize: 13.0,
      ),
      decoration: InputDecoration(
        errorStyle: GoogleFonts.poppins(
          fontSize: 13.0,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: K_blackColor.withOpacity(0.5),
          fontSize: 12.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(K_radius - 15),
            borderSide: const BorderSide(
              color: Colors.red,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(K_radius - 15),
            borderSide: const BorderSide(
              color: Colors.red,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(K_radius - 15),
            borderSide: const BorderSide(
              color: K_blueColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(K_radius - 15),
            borderSide: const BorderSide(
              color: K_blueColor,
            )),
      ),
    );
  }
}

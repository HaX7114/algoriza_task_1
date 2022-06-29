import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../Constants/constants.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({Key? key}) : super(key: key);

  static bool checkPhoneNumberIsTrue =
      false; //used in form field to make sure that this number is valid
  static String? getPhoneNumberValue; //used in form field to get the value
  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      validator: (value) {
        if (value == null) {
          return 'Phone number can not be empty!';
        } else if (!value.validateLength(type: PhoneNumberType.mobile)) {
          checkPhoneNumberIsTrue = false;
          return 'Invalid phone number!';
        } else {
          checkPhoneNumberIsTrue = true;
        }
        return null;
      },
      onSaved: (value) {
        getPhoneNumberValue = value!.getFormattedNsn();
      },
      defaultCountry: IsoCode.EG,
      style: GoogleFonts.poppins(
        color: K_blackColor,
        fontSize: 13.0,
      ),
      decoration: InputDecoration(
        errorStyle: GoogleFonts.poppins(
          fontSize: 13.0,
        ),
        hintText: '   Eg. 128 381 7114',
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

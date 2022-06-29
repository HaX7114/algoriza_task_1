import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:algoriza_task_1/Constants/local_paths.dart';
import 'package:algoriza_task_1/CustomWidgets/my_text.dart';
import 'package:algoriza_task_1/CustomWidgets/phone_text_field.dart';
import 'package:algoriza_task_1/Modules/RegisterScreenModule/register_screen.dart';
import 'package:algoriza_task_1/Shared/device_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/my_button.dart';
import '../../Shared/functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              backgroundSignUpImage,
              fit: BoxFit.cover,
              height: DeviceDimensions.getHeightOfDevice(context) * 0.3,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Welcome to Fashion Daily",
                    size: K_fontSizeM - 2,
                    fontWeight: FontWeight.normal,
                    color: K_blackColor.withOpacity(0.5),
                  ),
                  K_vSpace20,
                  const SignInRow(),
                  K_vSpace20,
                  MyText(
                    text: "Phone Number",
                    size: K_fontSizeM - 2,
                    fontWeight: FontWeight.normal,
                  ),
                  K_vSpace10,
                  const PhoneTextField(),
                  K_vSpace10,
                  MyButton(
                    text: "Sign In",
                    textColor: K_whiteColor,
                    height: 45.0,
                    textSize: K_fontSizeM - 2,
                    borderRadius: K_radius - 15,
                    fillColor: K_blueColor,
                    fontWeight: FontWeight.normal,
                    onPressed: () {},
                  ),
                  K_vSpace10,
                  const OrRow(),
                  K_vSpace10,
                  const SignWithGoogleButton(),
                  K_vSpace20,
                  const DoseNotHasAccount(),
                  K_vSpace10,
                  MyText(
                    text:
                        "Use the application according to policy rules. Any kinds of violations will be subject to sanctions.",
                    textAlign: TextAlign.center,
                    color: K_blackColor.withOpacity(0.4),
                    fontWeight: FontWeight.normal,
                    size: K_fontSizeM - 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrRow extends StatelessWidget {
  const OrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: K_greyColor,
            height: 0.75,
          ),
        ),
        MyText(
          text: "  Or  ",
          size: K_fontSizeM - 2,
          fontWeight: FontWeight.normal,
          color: K_blackColor.withOpacity(0.5),
        ),
        Expanded(
          child: Container(
            color: K_greyColor,
            height: 0.75,
          ),
        ),
      ],
    );
  }
}

class SignWithGoogleButton extends StatelessWidget {
  const SignWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1.0, color: K_blueColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(googleLogo, height: 20.0),
            MyText(
              text: "  Sign with Google ",
              size: K_fontSizeM - 3,
              color: K_blueColor,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}

class DoseNotHasAccount extends StatelessWidget {
  const DoseNotHasAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(
          text: "Doesn't has any account? ",
          size: K_fontSizeM - 2,
          fontWeight: FontWeight.normal,
        ),
        TextButton(
          onPressed: () {
            navigateTo(context, RegisterScreen());
          },
          child: MyText(
            text: "Register here",
            color: K_blueColor,
            fontWeight: FontWeight.normal,
            size: K_fontSizeM - 2,
          ),
        ),
      ],
    );
  }
}

class SignInRow extends StatelessWidget {
  const SignInRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: "Sign in",
          size: K_fontSizeL + 10,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              MyText(
                text: "Help ",
                size: K_fontSizeM - 2,
                color: K_blueColor,
                fontWeight: FontWeight.normal,
              ),
              const Icon(
                CupertinoIcons.question_circle_fill,
                color: K_blueColor,
                size: 20.0,
              )
            ],
          ),
        )
      ],
    );
  }
}

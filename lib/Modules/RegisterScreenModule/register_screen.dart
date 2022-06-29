import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:algoriza_task_1/Constants/local_paths.dart';
import 'package:algoriza_task_1/CustomWidgets/my_text.dart';
import 'package:algoriza_task_1/CustomWidgets/my_text_field.dart';
import 'package:algoriza_task_1/CustomWidgets/phone_text_field.dart';
import 'package:algoriza_task_1/Shared/device_dimensions.dart';
import 'package:algoriza_task_1/Shared/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/my_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  backgroundSignUpImage,
                  fit: BoxFit.cover,
                  height: DeviceDimensions.getHeightOfDevice(context) * 0.13,
                  width: double.infinity,
                ),
                SafeArea(
                  child: RawMaterialButton(
                    onPressed: () {
                      navigateBack(context);
                    },
                    fillColor: K_blackColor,
                    shape: const CircleBorder(),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: K_whiteColor,
                    ),
                  ),
                )
              ],
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
                  const RegisterRow(),
                  K_vSpace20,
                  MyText(
                    text: "Email",
                    size: K_fontSizeM - 2,
                    fontWeight: FontWeight.normal,
                  ),
                  K_vSpace10,
                  MyTextField(
                      borderColor: K_blackColor.withOpacity(0.5),
                      validatorText: "Email can't br empty!",
                      hintText: "Eg. example@email.com",
                      textController: _emailController),
                  K_vSpace10,
                  MyText(
                    text: "Phone Number",
                    size: K_fontSizeM - 2,
                    fontWeight: FontWeight.normal,
                  ),
                  K_vSpace10,
                  const PhoneTextField(),
                  K_vSpace10,
                  MyText(
                    text: "Password",
                    size: K_fontSizeM - 2,
                    fontWeight: FontWeight.normal,
                  ),
                  K_vSpace10,
                  MyTextField(
                    borderColor: K_blackColor.withOpacity(0.5),
                    isPasswordField: true,
                    hintText: "Password",
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: K_blackColor,
                    ),
                    validatorText: "Password can't br empty!",
                    textController: _emailController,
                  ),
                  K_vSpace10,
                  MyButton(
                    text: "Register",
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
                  const HasAccount(),
                  K_vSpace10,
                  MyText(
                    text: "By registering your account you are agree to our",
                    textAlign: TextAlign.center,
                    color: K_blackColor.withOpacity(0.4),
                    fontWeight: FontWeight.normal,
                    size: K_fontSizeM - 3,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        //navigateTo(context, const Screen());
                      },
                      child: MyText(
                        text: "terms and conditions",
                        color: K_blueColor,
                        fontWeight: FontWeight.normal,
                        size: K_fontSizeM - 3,
                      ),
                    ),
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

class HasAccount extends StatelessWidget {
  const HasAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(
          text: "Has any account? ",
          size: K_fontSizeM - 2,
          fontWeight: FontWeight.normal,
        ),
        TextButton(
          onPressed: () {
            //navigateTo(context, const Screen());
          },
          child: MyText(
            text: "Sign in here",
            color: K_blueColor,
            fontWeight: FontWeight.normal,
            size: K_fontSizeM - 2,
          ),
        ),
      ],
    );
  }
}

class RegisterRow extends StatelessWidget {
  const RegisterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: "Register",
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

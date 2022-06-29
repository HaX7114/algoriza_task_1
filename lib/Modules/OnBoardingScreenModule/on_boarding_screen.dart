import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:algoriza_task_1/Constants/local_paths.dart';
import 'package:algoriza_task_1/CustomWidgets/my_button.dart';
import 'package:algoriza_task_1/CustomWidgets/pageview_content.dart';
import 'package:algoriza_task_1/Modules/LoginScreenModule/login_screen.dart';
import 'package:algoriza_task_1/Shared/functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../CustomWidgets/my_text.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K_whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            K_vSpace20,
            K_vSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  borderRadius: K_radius * 2,
                  fillColor: K_brownColor,
                  text: "Skip",
                  textSize: K_fontSizeM - 2,
                  buttonWidth: 90.0,
                  height: 50.0,
                  onPressed: () {
                    navigateTo(context, const LoginScreen());
                  },
                )
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  PageViewContent(
                      lottiePath: bikeLottie,
                      title: "Get food delivery to your doorstep asap",
                      subTitle:
                          "We have young and professional delivery team that will bring your food as soon as possible to your doorstep"),
                  PageViewContent(
                      lottiePath: orderingLottie,
                      title: "Buy any food from your favorite restaurant",
                      subTitle:
                          "We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected"),
                  PageViewContent(
                      lottiePath: deliveryLottie,
                      title:
                          "Save your time and get your delivery food faster with us",
                      subTitle:
                          "We have young and professional delivery team that will bring your food as soon as possible to your doorstep"),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              effect: const SlideEffect(
                dotWidth: 20.0,
                dotHeight: 5.0,
                dotColor: K_greyColor,
                activeDotColor: K_goldColor,
              ),
              count: 3,
            ),
            K_vSpace20,
            MyButton(
              text: "Get Started",
              textColor: K_whiteColor,
              height: 55.0,
              textSize: K_fontSizeM - 2,
              borderRadius: K_radius - 10,
              fillColor: K_tealColor,
              fontWeight: FontWeight.normal,
              onPressed: () {
                navigateTo(context, const LoginScreen());
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(text: "Don't have an account? ", size: K_fontSizeM - 2),
                TextButton(
                  onPressed: () {
                    navigateTo(context, const LoginScreen());
                  },
                  child: MyText(
                    text: "Sign Up",
                    color: K_tealColor,
                    fontWeight: FontWeight.normal,
                    size: K_fontSizeM - 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Shared/functions.dart';

//Colors
const Color K_whiteColor = Color(0XFFFFFFFF);
const Color K_blueColor = Colors.blue;
const Color K_blackColor = Color(0XFF000000);
const Color K_offWhiteColor = Color(0XFFF8F9FF);
const Color K_transparentColor = Colors.transparent;
const Color K_greyColor = Color.fromARGB(255, 238, 238, 238);
const Color K_greyInDarkModeColor = Color(0XFF323232);
const Color K_purpleColor = Color(0xFFA974FF);
const Color K_brownColor = Color(0xFFF8F3E9);
const Color K_goldColor = Color(0xFFE4C08B);
const Color K_tealColor = Color(0xFF51AFAB);

//Spaces
const SizedBox K_hSpace10 = SizedBox(
  width: 10.0,
);
const SizedBox K_vSpace10 = SizedBox(
  height: 10.0,
);
const SizedBox K_hSpace20 = SizedBox(
  width: 20.0,
);
const SizedBox K_vSpace20 = SizedBox(
  height: 20.0,
);
const K_expandedSpace = Expanded(child: SizedBox());

//Doubles
const double K_fontSizeM = 14.0;
const double K_fontSizeL = 18.0;
const double K_radius = 20.0;
const double K_mainPadding = 20.0;

Widget backIcon(context) {
  return IconButton(
    onPressed: () => navigateBack(context),
    iconSize: 25.0,
    icon: const Icon(
      CupertinoIcons.back,
      color: K_whiteColor,
    ),
  );
}

//Progress Indicator
const Widget K_progressIndicator = Center(
    child: CircularProgressIndicator(
  color: K_blackColor,
  strokeWidth: 5.0,
));
//Shadows
dynamic shadow = [const BoxShadow(color: Colors.black12, blurRadius: 20.0)];

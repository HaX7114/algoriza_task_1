//Navigation functions

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../Constants/constants.dart';

navigateTo(context, page, {transition}) {
  Navigator.push(
    context,
    PageTransition(
      type: transition ?? PageTransitionType.rightToLeftWithFade,
      child: page,
      reverseDuration: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 500),
    ),
  );
}

navigateToWithReplace(context, page, {transition}) {
  Navigator.pushReplacement(
    context,
    PageTransition(
        type: transition ?? PageTransitionType.rightToLeftWithFade,
        child: page,
        duration: const Duration(milliseconds: 400)),
  );
}

navigateBack(context) {
  Navigator.pop(context);
}

//Toaster function

void showToastMessage(String msg, {dynamic color, dynamic textColor}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: color ?? K_whiteColor,
    textColor: textColor ?? K_blackColor,
    fontSize: K_fontSizeL - 5,
  );
}

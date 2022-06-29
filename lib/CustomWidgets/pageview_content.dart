import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:algoriza_task_1/CustomWidgets/my_text.dart';
import 'package:algoriza_task_1/Shared/device_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class PageViewContent extends StatelessWidget {
  const PageViewContent({
    Key? key,
    required this.lottiePath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String lottiePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(lottiePath,
            height: DeviceDimensions.getWidthOfDevice(context) * 0.8),
        MyText(
          text: title,
          size: K_fontSizeL,
          maxLinesNumber: 2,
          textAlign: TextAlign.center,
          showEllipsis: true,
        ),
        K_vSpace20,
        MyText(
          text: subTitle,
          size: K_fontSizeM,
          color: K_blackColor.withOpacity(0.6),
          fontWeight: FontWeight.normal,
          textAlign: TextAlign.center,
        ),
        K_vSpace20,
      ],
    );
  }
}

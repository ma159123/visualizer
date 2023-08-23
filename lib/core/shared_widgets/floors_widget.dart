import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../colors.dart';
import 'colored_text.dart';
import 'custom_box.dart';

class FloorsWidget extends StatelessWidget {
  const FloorsWidget({
    Key? key ,
    required this.title,
    required this.buttonText_1 ,
    required this.buttonText_2,
    this.button_height,
    this.button_width,
  }) : super(key: key);

  final String title;
  final String buttonText_1;
  final String buttonText_2;
  final double? button_height;
  final double? button_width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredText(str: title,fontSize: 24,),
        SizedBox(height: 4.h,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(
                height: button_height ?? 5.h,
                width: button_width ?? 30.w,
                text: buttonText_1,
                textColor: AppColors.onboardingText,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomBox(
                height: 5.h,
                width: 30.w,
                text: buttonText_2,
                textColor: AppColors.onboardingText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

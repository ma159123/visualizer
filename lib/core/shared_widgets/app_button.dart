import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../colors.dart';
import 'colored_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key , required this.function , required this.text , this.height , this.width}) : super(key: key);

  final Function() function;
  final String text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(offset: Offset(0,3) , blurRadius: 3),
          ]
      ),
      height: height ?? 5.h, width: width ??19.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5.0,
          backgroundColor: AppColors.gray_3,
        ),
        onPressed: function,
        child: ColoredText(str: text, fontSize: 15,),
      ),
    );
  }
}

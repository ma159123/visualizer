import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/colors.dart';
import 'package:visualizer/core/shared_widgets/colored_text.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key ,
    required this.text ,
    this.height ,
    this.width ,
    this.fontSize ,
    this.function,
    this.textColor,
  }) : super(key: key);
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final Function()? function;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 17.h, width: width ?? 39.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.gray_2.withOpacity(0.7), AppColors.gray_1.withOpacity(0.8)],
          begin: Alignment.topCenter, end: Alignment.bottomCenter,
        ),
        //color:Colors.grey,
        boxShadow: const [
          BoxShadow(offset: Offset(0,3) , blurRadius: 3),
        ]
      ),
      child: Center(
        child: ColoredText(str: text, fontSize: fontSize ?? 18 , color: textColor,)
      ),
    );
  }
}

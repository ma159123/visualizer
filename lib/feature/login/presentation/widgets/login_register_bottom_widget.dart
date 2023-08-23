import 'package:flutter/material.dart';
import 'package:visualizer/core/text_styles.dart';
import '../../../../core/colors.dart';



class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {Key? key,
        required this.text1,
        required this.onTap,
        required this.textColor,
        this.fontSize,
        this.borderRadius,
        required this.backgroundColor, required this.height, required this.width, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;
 final void Function()? onTap;
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  final double height;
  final double width;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: borderRadius,
          gradient:   const LinearGradient(
            colors: [
              AppColors.lightBrown,
              AppColors.darkBrown,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: const [
            BoxShadow(
                color:AppColors.black,
              spreadRadius: 1,
              offset: Offset(0.0,-2.0)
            )
          ]
      ),
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child:RichText(
            text: TextSpan(
              text: text1,
              style: TextStyles.titleStyle20,
              children: <TextSpan>[
                TextSpan(
                  text: text2,
                  style: TextStyles.titleStyle20.copyWith(
                      color: AppColors.white.withOpacity(0.5)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

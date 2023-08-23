import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/visualization_line.dart';
import '../colors.dart';
import 'colored_text.dart';
import 'custom_box.dart';


class InteriorFirstSection extends StatelessWidget {
  const InteriorFirstSection({
    Key? key,
    required this.title,
    required this.sub_title,
    required this.bodyText,
    required this.centerText,
    required this.buttonText,
    this.slash_text,
    this.details,
  }) : super(key: key);

  final String title;
  final String? slash_text;
  final String sub_title;
  final String bodyText;
  final String centerText;
  final String buttonText;
  final String? details;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h , left: 4.w , right: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ColoredText(str: title , color: AppColors.coffeColor, fontSize: 30,),
              ColoredText(str: slash_text! , color: AppColors.onboardingText.withOpacity(0.7),fontSize: 20, ),
            ],
          ),
          ColoredText(str: sub_title , color: AppColors.onboardingText, fontSize: 20,),
          SizedBox(height: 1.h,),
          const VisualizationLine(),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              bodyText,
              style: const TextStyle(
                color: Colors.black,  fontSize: 11,
              ),
              textAlign: TextAlign.start,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 4.h,),
          Center(child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ColoredText(str: centerText , fontSize: 24,),
          )),
          Center(child: ColoredText(str: details! , fontSize: 16, color: AppColors.onboardingText,)),
          SizedBox(height: 4.h,),
          Center(
              child: GestureDetector(
                  onTap: (){},
                  child: CustomBox(text: buttonText))),
          SizedBox(height: 8.h,),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/visualization_line.dart';

import '../colors.dart';
import '../strings.dart';
import 'colored_text.dart';
import 'grid_View_buttons.dart';

class ExteriorScreen extends StatelessWidget {
  const ExteriorScreen({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.bodyText,
    required this.list,
    required this.widgets,
    //required this.exterior,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String bodyText;
  final List<String>list;
  final List<Widget>widgets;
  //final bool exterior;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 6.h, left: 4.w , right: 2.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ColoredText(str: title , color: AppColors.coffeColor, fontSize: 36,),
               ColoredText(str: subTitle , color: AppColors.onboardingText, fontSize: 20,),
              SizedBox(height: 1.h,),
              const VisualizationLine(),
              SizedBox(height: 2.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  bodyText,
                  style: const TextStyle(
                    color: Colors.black,  fontSize: 12,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 17,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridViewButtons(
                list: list,
                widgets: widgets,
                //exterior: exterior,
              ),
              SizedBox(height: 4.h,),
              const VisualizationLine()
            ],
          ),
        ),
      ),
    );
  }
}
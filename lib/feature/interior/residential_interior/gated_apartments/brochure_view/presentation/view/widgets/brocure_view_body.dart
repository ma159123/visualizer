import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/floors_widget.dart';

import '../../../../../../../../core/colors.dart';
import '../../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../../core/shared_widgets/colored_text.dart';
import '../../../../../../../../core/shared_widgets/direction_of_view_widget.dart';
import '../../../../../../../../core/shared_widgets/interior_first_section.dart';
import '../../../../../../../../core/shared_widgets/interior_last_section.dart';
import '../../../../../../../../core/shared_widgets/line.dart';
import '../../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../../core/shared_widgets/types_of_tours_widget.dart';
import '../../../../../../../../core/shared_widgets/visualization_line.dart';
import '../../../../../../../../core/strings.dart';
import '../../../../../../../../core/shared_widgets/best_seller_widget.dart';

class ApartBrochureViewBody extends StatelessWidget {
  const ApartBrochureViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> directions = ["Up to 1 acres" , "Up to 5 acres" , "Up to 10 acres" , "Up to 20 acres" , "Up to 40 acres" , "Up to 80 acres"];

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: ScrrensLinearGradient(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.h , left: 4.w , right: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              ColoredText(str: AppStrings.brochure_views_title , color: AppColors.coffeColor, fontSize: 30,),
                              ColoredText(color: AppColors.coffeColor,fontSize: 20, str: '',),
                            ],
                          ),
                          const ColoredText(str: " Marketing collaterals" , color: AppColors.onboardingText, fontSize: 20,),
                          SizedBox(height: 1.h,),
                          const VisualizationLine(),
                          SizedBox(height: 2.h,),
                          const Text(
                            AppStrings.brochure_views_text,
                            style: TextStyle(
                              color: Colors.black,  fontSize: 11,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h,),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    DirectionOfView(directions: directions, title: "Acres"),
                    SizedBox(height: 5.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 5.h,),
                    InteriorLastSection(addToWorkButton: false,),
                  ],
                ),
              ),
            ),
            const BrownStage(),
          ],
        ),
      ),
    );
  }
}

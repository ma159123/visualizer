import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/colored_text.dart';
import 'package:visualizer/core/shared_widgets/custom_box.dart';
import 'package:visualizer/core/shared_widgets/line.dart';
import 'package:visualizer/core/shared_widgets/visualization_line.dart';
import 'package:visualizer/core/strings.dart';
import 'package:visualizer/core/shared_widgets/facing_and_type.dart';
import '../../../../../../../../core/colors.dart';
import '../../../../../../../../core/shared_widgets/add_attachment_widget.dart';
import '../../../../../../../../core/shared_widgets/app_text_field.dart';
import '../../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../../core/shared_widgets/interior_first_section.dart';
import '../../../../../../../../core/shared_widgets/interior_last_section.dart';
import '../../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../../core/text_styles.dart';
import '../../../../../../../../core/shared_widgets/best_seller_widget.dart';


class LandscapeViewBody extends StatelessWidget {
  LandscapeViewBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                              ColoredText(str: AppStrings.landscape_view_title , color: AppColors.coffeColor, fontSize: 30,),
                              ColoredText(color: AppColors.coffeColor,fontSize: 20, str: '',),
                            ],
                          ),
                          const ColoredText(str: "3dModeling" , color: AppColors.onboardingText, fontSize: 20,),
                          SizedBox(height: 1.h,),
                          const VisualizationLine(),
                          SizedBox(height: 2.h,),
                          const Text(
                            AppStrings.landscape_view_text,
                            style: TextStyle(
                              color: Colors.black,  fontSize: 11,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
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






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../../core/colors.dart';
import '../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../core/shared_widgets/colored_text.dart';
import '../../../../../../../core/shared_widgets/interior_first_section.dart';
import '../../../../../../../core/shared_widgets/interior_last_section.dart';
import '../../../../../../../core/shared_widgets/line.dart';
import '../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../core/shared_widgets/visualization_line.dart';
import '../../../../../../../core/strings.dart';


class MiscellaneousViewBody extends StatelessWidget {
  const MiscellaneousViewBody({Key? key}) : super(key: key);

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
                            children: [
                              const ColoredText(str: AppStrings.misc_title , color: AppColors.coffeColor, fontSize: 30,),
                              ColoredText(str: "" , color: AppColors.onboardingText.withOpacity(0.7),fontSize: 20, ),
                            ],
                          ),
                          const ColoredText(str: AppStrings.sub_title , color: AppColors.onboardingText, fontSize: 20,),
                          SizedBox(height: 1.h,),
                          const VisualizationLine(),
                          SizedBox(height: 2.h,),
                          const Text(
                            AppStrings.misc_text,
                            style: TextStyle(
                              color: Colors.black,  fontSize: 11,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6.h,),
                        ],
                      ),
                    ),

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

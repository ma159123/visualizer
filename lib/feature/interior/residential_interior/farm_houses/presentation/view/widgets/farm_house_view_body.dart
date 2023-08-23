import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../../core/colors.dart';
import '../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../core/shared_widgets/interior_first_section.dart';
import '../../../../../../../core/shared_widgets/interior_last_section.dart';
import '../../../../../../../core/shared_widgets/line.dart';
import '../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../core/strings.dart';


class FarmHousesViewBody extends StatelessWidget {
  const FarmHousesViewBody({Key? key}) : super(key: key);

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
                    const InteriorFirstSection(
                      title: AppStrings.farm_house_title,
                      slash_text: AppStrings.farm_house_slash,
                      sub_title: AppStrings.sub_title,
                      bodyText: AppStrings.farm_house_text,
                      centerText: AppStrings.acres,
                      details: "",
                      buttonText: "Up to 1 acre",
                    ),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 4.h,),
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

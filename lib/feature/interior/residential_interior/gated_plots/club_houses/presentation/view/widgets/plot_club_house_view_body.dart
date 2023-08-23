import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/floors_widget.dart';

import '../../../../../../../../core/colors.dart';
import '../../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../../core/shared_widgets/direction_of_view_widget.dart';
import '../../../../../../../../core/shared_widgets/interior_first_section.dart';
import '../../../../../../../../core/shared_widgets/interior_last_section.dart';
import '../../../../../../../../core/shared_widgets/line.dart';
import '../../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../../core/shared_widgets/types_of_tours_widget.dart';
import '../../../../../../../../core/strings.dart';
import '../../../../../../../../core/shared_widgets/best_seller_widget.dart';

class PlotClubHouseViewBody extends StatelessWidget {
  const PlotClubHouseViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> directions = ["North east" , "South east" , "North weast" , "South weast" , "Aerial view" , "Front"];

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
                      title: AppStrings.club_house_title,
                      slash_text: AppStrings.club_house_slash_text,
                      sub_title: AppStrings.sub_title,
                      bodyText: AppStrings.club_house_text,
                      centerText: AppStrings.calculate_total_area,
                      details: "",
                      buttonText: "Up to 10,000 Sft",
                    ),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 4.h,),
                    DirectionOfView(directions: directions, title: AppStrings.direction_of_view,),
                    SizedBox(height: 4.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
                    const FloorsWidget(title: AppStrings.floor, buttonText_1: 'Up to 5 floors', buttonText_2: 'Up to 10 floors',),
                    SizedBox(height: 6.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 4.h,),
                    const BestSellerWidget(),
                    SizedBox(height: 4.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 5.h,),
                    InteriorLastSection(addToWorkButton: true,),
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

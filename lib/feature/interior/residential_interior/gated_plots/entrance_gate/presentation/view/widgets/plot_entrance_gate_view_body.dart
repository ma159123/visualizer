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

class PlotEntranceGateViewBody extends StatelessWidget {
  const PlotEntranceGateViewBody({Key? key}) : super(key: key);

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
                      title: AppStrings.entrance_gate_title,
                      slash_text: AppStrings.entrance_gate_slash_text,
                      sub_title: "Design / 3dModeling",
                      bodyText: AppStrings.entrance_gate_text,
                      centerText: AppStrings.gate_width,
                      details: "",
                      buttonText: "Up to 50 feet",
                    ),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 4.h,),
                    DirectionOfView(directions: directions, title: AppStrings.direction_of_view,),
                    SizedBox(height: 5.h,),
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

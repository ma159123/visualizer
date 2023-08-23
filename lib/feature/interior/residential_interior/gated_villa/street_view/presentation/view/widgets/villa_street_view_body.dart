import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/direction_of_view_widget.dart';
import 'package:visualizer/core/shared_widgets/interior_first_section.dart';
import 'package:visualizer/core/shared_widgets/interior_last_section.dart';
import '../../../../../../../../core/colors.dart';
import '../../../../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../../../../core/shared_widgets/colored_text.dart';
import '../../../../../../../../core/shared_widgets/custom_box.dart';
import '../../../../../../../../core/shared_widgets/line.dart';
import '../../../../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../../../../core/shared_widgets/visualization_line.dart';
import '../../../../../../../../core/strings.dart';
import '../../../../../../../../core/shared_widgets/facing_and_type.dart';

class VillaStreetViewBody extends StatelessWidget {
  const VillaStreetViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> directions = ["4 villas" , "8 villas" , "12 villas" , "16 villas"];

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
                        title: AppStrings.street_view,
                        slash_text: "",
                        sub_title: AppStrings.sub_title,
                        bodyText: AppStrings.street_view_text,
                        centerText: AppStrings.villa_sizes,
                        details: "",
                        buttonText: "Up to 250 Syds",
                    ),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
                    DirectionOfView(directions: directions, title: "Villas to be shown"),
                    SizedBox(height: 4.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
                    Container(padding: const EdgeInsetsDirectional.all(18), child: const FacingAndTypes(facing: ' Villa facing', type: 'Types of villas',)),
                    SizedBox(height: 2.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
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

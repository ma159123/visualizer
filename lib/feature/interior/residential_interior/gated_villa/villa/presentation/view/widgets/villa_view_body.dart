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


class VillaViewBody extends StatelessWidget {
  VillaViewBody({Key? key}) : super(key: key);


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
                        title: AppStrings.villas,
                        slash_text: "",
                        sub_title: AppStrings.sub_title,
                        bodyText: AppStrings.villa_text,
                        centerText: AppStrings.villa_sizes,
                        details: "",
                        buttonText: "Up to 250 Syds",
                    ),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
                    Container(padding: const EdgeInsetsDirectional.all(18), child: const FacingAndTypes(facing: ' Villa facing', type: 'Types of villas',),),
                    SizedBox(height: 3.h,),
                    LineWidget(color: AppColors.darkBrown, height: 0.7.h, width: double.maxFinite,),
                    SizedBox(height: 3.h,),
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






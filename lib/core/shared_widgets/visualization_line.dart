import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/colors.dart';
import 'line.dart';



class VisualizationLine extends StatelessWidget {
  const VisualizationLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Visualizations",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.gray_1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Color(0xffFFFFFF),
            ),
            SizedBox(width: 3.w,),
            LineWidget(width: 70.w, color: AppColors.gray_1,)
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/colors.dart';

import 'colored_text.dart';
import 'custom_box.dart';

class TypesOfToursWidget extends StatelessWidget {
  const TypesOfToursWidget({Key? key , required this.types}) : super(key: key);

  final List<String> types;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ColoredText(str: ' Type of towers to be shown',fontSize: 24,),
        SizedBox(height: 4.h,),
        Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 10.w, // spacing between items
            runSpacing: 3.0.h, // spacing between lines
            children: List.generate(
              types.length,
                  (index) => CustomBox(
                  height: 5.h, width: 20.w, text: types[index] , textColor: AppColors.onboardingText,),
            ),),
      ],
    );
  }
}
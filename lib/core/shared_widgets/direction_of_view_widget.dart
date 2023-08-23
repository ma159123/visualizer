import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';
import 'colored_text.dart';
import 'custom_box.dart';


class DirectionOfView extends StatelessWidget {
  const DirectionOfView({Key? key , required this.directions , required this.title}) : super(key: key);

  final String title;
  final List<String> directions;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredText(
          str: title,
          fontSize: 24,
        ),
        SizedBox(
          height: 4.h,
        ),
        Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 15.w, // spacing between items
            runSpacing: 3.0.h, // spacing between lines
            children: List.generate(
              directions.length,
              (index) => CustomBox(
                  height: 5.h, width: 30.w, text: directions[index], textColor: AppColors.onboardingText,
              ),
            )),
      ],
    );
  }
}

// List<String> directions = [
//   'North east',
//   'South east',
//   'North west',
//   'South west',
//   'Aerial view',
//   'Front'
// ];

import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';
import 'colored_text.dart';
import 'custom_box.dart';
import '../text_styles.dart';


class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ColoredText(
          str: 'Design options',
          fontSize: 24,
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Visualizer design option',
              style: TextStyles.titleStyle18
                  .copyWith(color: AppColors.white.withOpacity(0.6),fontWeight: FontWeight.normal),
            ),
            SizedBox(
              width: 5.w,
            ),
            CustomBox(
              height: 5.h,
              width: 18.w,
              text: '+1',
              fontSize: 14,
              textColor: AppColors.onboardingText,
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(
                height: 5.h,
                width: 20.w,
                text: 'Day view',
                fontSize: 14,
                textColor: AppColors.onboardingText,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomBox(
                height: 5.h,
                width: 25.w,
                text: 'Evening view ',
                fontSize: 14,
                textColor: AppColors.onboardingText,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My design option',
                  style: TextStyles.titleStyle18
                      .copyWith(color: AppColors.white.withOpacity(0.6),fontWeight: FontWeight.normal),
                ),
                Text(
                  '(Reference/sketch)',
                  style: TextStyles.titleStyle12
                      .copyWith(color: AppColors.white.withOpacity(0.4)),
                ),
              ],
            ),
            SizedBox(
              width: 19.w,
            ),
            CustomBox(
              height: 5.h,
              width: 18.w,
              text: '+1',
              fontSize: 14,
              textColor: AppColors.onboardingText,
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(
                height: 5.h,
                width: 20.w,
                text: 'Day view',
                fontSize: 14,
                textColor: AppColors.onboardingText,
              ),
              SizedBox(
                width: 5.w,
              ),
              CustomBox(
                height: 5.h,
                width: 25.w,
                text: 'Evening view ',
                fontSize: 14,
                textColor: AppColors.onboardingText,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        const ColoredText(
          str: 'Best seller',
          fontSize: 30,
        ),
        const ColoredText(
          str: 'Choose above any two options',
          fontSize: 12,
        ),
      ],
    );
  }
}

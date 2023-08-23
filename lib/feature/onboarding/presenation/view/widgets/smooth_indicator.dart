import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visualizer/feature/onboarding/presenation/view_model/onboarding_cubit/onboarding_cubit.dart';

class OnBoardingSmoothIndicator extends StatelessWidget {
  const OnBoardingSmoothIndicator({Key? key , required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {

    var cubit = OnBoardingCubit.get(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.5.h),
      child: SmoothPageIndicator(
        controller: pageController,
        count: cubit.list.length,
        effect: SlideEffect(
          activeDotColor: Colors.white,
          dotColor: Colors.grey.withOpacity(0.5),
          dotHeight: 1.h, dotWidth: 2.w,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/assets_manager.dart';
import 'package:visualizer/feature/onboarding/presenation/view/onboarding_view.dart';
import 'package:visualizer/feature/splash/widgets/second_slider.dart';
import '../../../core/colors.dart';
import '../../onboarding/presenation/view/widgets/brown_container.dart';
import 'first_slider.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {




  @override
  void initState() {
    super.initState();
   // initalSlidingAnimation();
    NavigateToOnBoarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite, width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.lightGray.withOpacity(0.8),
                  AppColors.grad_black.withOpacity(0.9),
                ])
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 39.w,
              margin: EdgeInsets.only(left: 25.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsManager.splash_logo),
                  FirstSlider(),
                  SecondSlider(),
                ],
              ),
            ),
            Container(
              height: 80.h, width: 15.w,
              child: const BrownContainer(),
            ),
          ],
        ),
      ),
    );
  }

  // initalSlidingAnimation() {
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 2),
  //   );
  //   animation_1 =
  //       Tween<Offset>(begin: const Offset(15, 0), end: const Offset(0, 0))
  //           .animate(controller);
  //   animation_2 =
  //       Tween<Offset>(begin: const Offset(15, 10), end: const Offset(0, 0))
  //           .animate(controller);
  //
  //   controller.forward();
  // }

  NavigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const OnBoardingView(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }
}
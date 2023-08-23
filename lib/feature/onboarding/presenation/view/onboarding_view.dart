import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import 'widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                colors: [ AppColors.lightGray.withOpacity(0.7),AppColors.grad_black.withOpacity(0.9),])
          ),
            child: OnBoardingViewBody(),
        ),
    );
  }
}

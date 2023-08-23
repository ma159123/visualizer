import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/feature/login/presentation/view/Login.dart';
import 'package:visualizer/feature/login/presentation/view/Register.dart';
import 'package:visualizer/feature/onboarding/presenation/view_model/onboarding_cubit/onboarding_cubit.dart';
import 'package:visualizer/feature/onboarding/presenation/view_model/onboarding_cubit/onboarding_state.dart';
import 'package:visualizer/feature/onboarding/presenation/view/widgets/brown_container.dart';
import 'package:visualizer/feature/onboarding/presenation/view/widgets/get_started_button.dart';
import 'package:visualizer/feature/onboarding/presenation/view/widgets/onboarding_info.dart';
import 'package:visualizer/feature/onboarding/presenation/view/widgets/smooth_indicator.dart';




class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void Navigate(){
      Get.to(() => const RegisterView(),
        //transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 1000),
      );
    }

    PageController pageController = PageController();
    var cubit = OnBoardingCubit.get(context);

    return BlocConsumer<OnBoardingCubit , OnBoardingStates>(
      listener: (BuildContext context, Object? state) {  },
      builder: (BuildContext context, state) {
        return Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
                controller: pageController,
                itemCount: cubit.list.length,
                onPageChanged: (index){
                  cubit.onPageChange(index);
                },
                itemBuilder: (context , index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const BrownContainer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.5.w),
                          child: const OnBoardingInfo(),
                      ),
                    ],
                  );
                }
            ),
          ),

          OnBoardingSmoothIndicator(pageController: pageController,),
           GetStartedButton(function: Navigate,),
        ],
      );
        },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/feature/onboarding/presenation/view_model/onboarding_cubit/onboarding_state.dart';

import '../../../../../core/colors.dart';
import '../../view_model/onboarding_cubit/onboarding_cubit.dart';
import '../../../../../core/shared_widgets/colored_text.dart';

class OnBoardingInfo extends StatelessWidget {
  const OnBoardingInfo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return BlocConsumer<OnBoardingCubit , OnBoardingStates>(
      listener: (BuildContext context , Object? state){  },
      builder: (BuildContext context , state){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ColoredText(str: cubit.list[cubit.current_page].title, fontSize: 24),
            Container(
                margin: EdgeInsets.symmetric(vertical: 1.5.h),
                child: SvgPicture.asset(cubit.list[cubit.current_page].icon)),
            ColoredText(str: cubit.list[cubit.current_page].body, fontSize: 16,),
            cubit.current_page==0?Container(
                margin: EdgeInsets.symmetric(vertical: 4.h),
                child: const ColoredText(str: 'Now design world on your finger tips', fontSize: 16)): Container(
              margin: EdgeInsets.symmetric(vertical: 4.h),
            ),
            SizedBox(height: 4.h,),
            Text(cubit.list[cubit.current_page].introducing , style: const TextStyle(color: AppColors.onboardingText , fontSize: 24),),
            SizedBox(height: 1.h,),
            introducingRow(cubit.list[cubit.current_page].image , cubit.current_page),
          ],
        );
      },
    );
  }

  Widget introducingRow(String image , int index){
    List<String> text = ["Chat bot" , "Hex Sketch mode" , "zoom"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image,width: 20.w,height: 5.h,),
      index==1? const Row(
        children: [
          ColoredText(str: 'Hex' , fontSize: 24,),
          ColoredText(str: 'Sketch mode' , fontSize: 12,)
        ],
      ):ColoredText(str: text[index] , fontSize: 20,color:index==2? Colors.blue:null,),
      ],
    );
  }
}

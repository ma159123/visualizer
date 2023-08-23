import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/text_styles.dart';

import '../../../../core/colors.dart';



class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      width: 90.w,
      height: 10.h,
      decoration:  const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
          gradient:  LinearGradient(
            colors: [
              AppColors.lightBrown,
              AppColors.darkBrown,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
                color:AppColors.black,
                spreadRadius: 2,
                offset: Offset(0.0,-2.0)
            )
          ]
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'W E L C O M E  ',
            style: TextStyles.titleStyle20,
            children: <TextSpan>[
              TextSpan(
                text: 'B A C K ',
                style: TextStyles.titleStyle20.copyWith(color:AppColors.white.withOpacity(0.5) ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

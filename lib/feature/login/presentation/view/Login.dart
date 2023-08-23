import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/login_text_field.dart';
import 'package:visualizer/core/text_styles.dart';
import 'package:visualizer/feature/login/presentation/widgets/welcome_widget.dart';
import '../../../../core/colors.dart';
import '../../../../core/shared_widgets/app_text_field.dart';
import '../../../../core/shared_widgets/line.dart';
import '../../../exterior/residential/residential_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                AppColors.lightGray.withOpacity(0.6),
                AppColors.darkGray,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.6, 1]),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w),
              width: 80.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.lightBrown,
                      AppColors.darkBrown,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black,
                        spreadRadius: 2,
                        offset: Offset(0.0, -2.0))
                  ]),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Hola! .',
                          style: TextStyles.titleStyle24,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Shekar',
                              style: TextStyles.titleStyle24.copyWith(
                                  color: AppColors.white.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const WelcomeWidget(),
                      SizedBox(height: 3.h,),
                      LoginTextField(
                        textEditingController: TextEditingController(),
                        hintText: 'Email id',
                        validation: (val) {},
                        isPass: false,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LineWidget(),
                      SizedBox(height: 3.h,),
                      LoginTextField(
                        textEditingController: TextEditingController(),
                        hintText: 'Password',
                        validation: (val) {},
                        isPass: false,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 8.h,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResidentialView()));
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'L  O  G',
                            style: TextStyles.titleStyle20,
                            children: <TextSpan>[
                              TextSpan(
                                text: '  I  N   ',
                                style: TextStyles.titleStyle20.copyWith(
                                    color: AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'FORGOT  ',
                            style: TextStyles.titleStyle16.copyWith(
                                color: AppColors.white.withOpacity(0.5),
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            'PASSWORD',
                            style: TextStyles.titleStyle16.copyWith(
                                color: AppColors.coffeColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

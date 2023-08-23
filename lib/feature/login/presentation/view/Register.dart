import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/assets_manager.dart';
import 'package:visualizer/core/shared_widgets/login_text_field.dart';
import 'package:visualizer/core/text_styles.dart';

import '../../../../core/colors.dart';
import '../../../../core/shared_widgets/app_text_field.dart';
import '../../../../core/shared_widgets/line.dart';
import '../widgets/login_action.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
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
                  width: 80.w,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 34.h,
                      ),
                      LoginTextField(
                        textEditingController: TextEditingController(),
                        hintText: 'Email id',
                        validation: (val) {
                          return null;
                        },
                        isPass: false,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 2.h,
                      ),
                      LoginTextField(
                        textEditingController: TextEditingController(),
                        hintText: 'Password',
                        validation: (val) {
                          return null;
                        },
                        isPass: false,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                              size: 4.h,
                            ),
                            color: AppColors.white,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image(
                              image: const AssetImage(AssetsManager.gmail_logo),
                              width: 10.w,
                              height: 3.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'GET ',
                            style: TextStyles.titleStyle20.copyWith(
                                color: AppColors.white.withOpacity(0.5),
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            'ACCESS',
                            style: TextStyles.titleStyle20.copyWith(
                                color: AppColors.coffeColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0.h),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          AssetsManager.arrow,
                        ),
                        width: 5.w,
                      ),
                      Text(
                        'Legal',
                        style: TextStyles.titleStyle20
                            .copyWith(color: AppColors.coffeColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 0.h,
              bottom: 50.h,
              child: LoginAction(
                width: 90.w,
                height: 10.h,
              )),
        ],
      ),
    );
  }
}

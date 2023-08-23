import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/feature/exterior/residential/residential_view.dart';
import 'package:visualizer/feature/onboarding/presenation/view_model/onboarding_cubit/onboarding_cubit.dart';

import 'feature/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingCubit>(create: (BuildContext context) => OnBoardingCubit(),),
      ],
      child: Sizer
        (builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
          return  const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: SplashView(),
            ),
          );
      },),
    );
  }
}
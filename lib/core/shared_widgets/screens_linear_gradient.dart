import 'package:flutter/cupertino.dart';

import '../colors.dart';

LinearGradient ScrrensLinearGradient(){
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.lightGray.withOpacity(0.8),
        AppColors.darkGray.withOpacity(0.9),
      ]);
}
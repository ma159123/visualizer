import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../core/colors.dart';

class SecondSlider extends StatelessWidget {
  const SecondSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w),
      child: Text(
        " DESIGN .VISUALIZATION",
        style: TextStyle(
            fontSize: 10.0, color: AppColors.coffeColor, height: 0.07.h),
      ),
    );
  }
}

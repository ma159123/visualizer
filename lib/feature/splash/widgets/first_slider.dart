import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../core/colors.dart';
import '../../../core/text_styles.dart';

class FirstSlider extends StatelessWidget {
  const FirstSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      " VISUALIZER",
      style: TextStyles.titleStyle24
          .copyWith(color: AppColors.white, fontSize: 22, height: 0.15.h),
    );
  }
}

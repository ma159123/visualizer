import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';


class BrownStage extends StatelessWidget {
  const BrownStage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,  width: 8.w,
      decoration:  const BoxDecoration(
        boxShadow: [
          BoxShadow(offset: Offset(-1,-2) , color: Colors.black , blurRadius: 5.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.darkBrown , AppColors.lightBrown ,],
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35) , topLeft: Radius.circular(35)),
      ),
    );
  }
}

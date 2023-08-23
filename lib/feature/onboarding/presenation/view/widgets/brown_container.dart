import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/colors.dart';

class BrownContainer extends StatelessWidget {
  const BrownContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,  width: 23.w,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(offset: Offset(-1,-2) , color: Colors.black , blurRadius: 5.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.darkBrown , AppColors.lightBrown ,],
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
      ),
    );
  }
}

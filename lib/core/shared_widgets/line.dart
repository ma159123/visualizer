import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../colors.dart';


class LineWidget extends StatelessWidget {
  LineWidget({Key? key,this.height,this.width,this.color}) : super(key: key);

  final double? width;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width?? 50.0.w,
      height:height?? 0.2.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.lightBrown,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

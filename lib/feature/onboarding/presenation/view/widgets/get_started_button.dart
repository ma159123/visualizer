import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/colored_text.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key , required this.function}) : super(key: key);

  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h, width: 168,
      margin:  EdgeInsets.only(bottom: 4.h),
      child: ElevatedButton(
        onPressed:function,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color(0xff3B3B3B)
        ),
        child: const ColoredText(str: 'GET STARTED', fontSize: 20, )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'colored_text.dart';


class SixButton extends StatelessWidget {
  const SixButton({
    Key? key ,
    required this.t_1,
    required this.w_1,
    required this.t_2,
    required this.w_2,
  }) : super(key: key);

  final String t_1;
  final String t_2;
  final Widget w_1;
  final Widget w_2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>w_1));
          },
          child: SharedButton(t_1),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>w_1)
            );
          },
          child: SharedButton(t_2),
        ),
      ],
    );
  }
  Widget SharedButton(String text){
    return Container(
      margin: EdgeInsets.only(right: 6.w , bottom: 2.h),
      height: 15.h,  width: 35.w,
      decoration: const BoxDecoration(
          color: Color(0xff4A4A4A),
          boxShadow: [
            BoxShadow(offset: Offset(-1,4) , color: Colors.black , blurRadius: 4.0),
          ]
        //borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
          child: ColoredText(str: text , fontSize: 18,)
      ),
    );
  }
}

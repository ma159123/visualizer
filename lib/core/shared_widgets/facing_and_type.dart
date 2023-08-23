import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/colored_text.dart';
import 'package:visualizer/core/shared_widgets/custom_box.dart';
import 'app_button.dart';



class FacingAndTypes extends StatelessWidget {
  const FacingAndTypes({Key? key , required this.facing , required this.type}) : super(key: key);

  final String facing;
  final String type;

  @override
  Widget build(BuildContext context) {

    List<List<String>> villa_type = [["E1" , "E2" , "E3"] ,["W1", "W2" , "W3"] , ["N1" ,"N2" , "N3"] , ["S1" , "S2" , "S3"]];
    List<String> villa_facing = ["East" , "Weast" , "North" , "South"];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ColoredText(str: facing),
            SizedBox(height: 3.h,),
            for(int index = 0 ; index < 4 ; index++)
              Container(
                margin: EdgeInsets.only(bottom: 2.h),
                child: CustomBox(text: villa_facing[index], height: 5.h, width: 19.w,),
              ),
          ],
        ),

        SizedBox(width: 6.w,),

        Column(
          children: [
            ColoredText(str: type),

            SizedBox(height: 3.h,),

            for(int index = 0; index < 4 ; index++)
                Row(
                  children: [
                    for(int i = 0; i < 3 ; i++)
                    Container(
                      margin: EdgeInsets.only(right: 2.w),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          child: CustomBox(text: villa_type[index][i], height: 5.h, width: 14.w,)
                        ),
                    ),
                  ],
                ),
          ],
        ),
      ],
    );
  }


}

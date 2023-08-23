import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/colors.dart';
import 'package:visualizer/core/shared_widgets/____.dart';

import '../text_styles.dart';


class GridViewButtons extends StatelessWidget {
  const GridViewButtons({
    Key? key ,
    required this.list ,
    required this.widgets ,
    //required this.exterior
  }) : super(key: key);

  final List<String> list;
  final List<Widget> widgets;
  //final bool exterior;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: GridView.count(
        childAspectRatio: 1.7,
        crossAxisCount: 2,
        crossAxisSpacing: 5.w,
        mainAxisSpacing: 3.h,
        shrinkWrap: true,
        children: List.generate(6, (index) {

          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> widgets[index]));
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff4A4A4A),
                  boxShadow: [
                    BoxShadow(offset: Offset(-1,4) , color: Colors.black , blurRadius: 4.0),
                  ]
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    list[index],
                    style:  TextStyles.titleStyle18.copyWith( fontWeight: FontWeight.w400 , color: AppColors.onboardingText),
                  ),
                )
              ),
            ),
          );
        },),
      ),
    );
  }
}
// Text(
// "Gated Apartments" ,
// textAlign: TextAlign.center,
// style: TextStyle(fontSize: 21 , fontWeight: FontWeight.w400 , color: Colors.white),
// ),
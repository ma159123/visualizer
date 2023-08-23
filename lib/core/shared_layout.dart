import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visualizer/core/shared_widgets/custom_box.dart';
import 'shared_widgets/facing_and_type.dart';
import 'colors.dart';


class SharedLayout extends StatelessWidget {
  const SharedLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.lightGray.withOpacity(0.8),
                  AppColors.darkGray.withOpacity(0.9),
                ]),
        ),
        
      ),
    );
  }
}

class ButtonsByNumber extends StatelessWidget {
  const ButtonsByNumber({Key? key , required this.rows}) : super(key: key);

  final int rows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int index=0 ; index < rows ; index++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for(int index=0 ; index < rows ; index++)
                CustomBox(text: "text"),
            ],
          ),
      ],
    );
  }
}


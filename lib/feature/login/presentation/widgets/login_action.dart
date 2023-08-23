import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/colors.dart';
import '../view/Login.dart';
import 'login_register_bottom_widget.dart';

class LoginAction extends StatelessWidget {
  const LoginAction({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(right: 5.0.w),
      child: Row(
        children: [
          Expanded(
              child: CustomBottom(
            text1: 'L O G',
            text2: ' I N',
            textColor: AppColors.white,
            backgroundColor: Colors.transparent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
            height: height,
            width: width,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          )),
          Expanded(
              child: CustomBottom(
            text1: 'R E G I S ',
            text2: 'T E R',
            textColor: Colors.white,
            backgroundColor: Colors.transparent,
            onTap: () {},
            height: height,
            width: width,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          )),
        ],
      ),
    );
  }
}

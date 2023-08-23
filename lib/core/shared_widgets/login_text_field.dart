import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';


class LoginTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String?)? validation;
  bool isPass = false;
 final void Function()?  onTap;
  LoginTextField(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.validation,
      required this.isPass,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      onTap: onTap ?? () {},
      obscureText: isPass,
      cursorColor: Colors.black,
      validator: validation ?? (val) {
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      controller: textEditingController,
      scrollPadding: EdgeInsets.only(bottom: 40.h),
      style: const TextStyle(
        color: AppColors.coffeColor,
      ),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.coffeColor,
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

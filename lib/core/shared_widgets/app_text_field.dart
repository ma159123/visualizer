import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../colors.dart';
import '../text_styles.dart';


class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final int maxLine;
  final String? Function(String?)? validation;
  final TextInputType? keyboardType;
  bool isPass = false;
  final void Function()? onTap;
  AppTextField(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.validation,
      required this.isPass,
      this.onTap,
      this.keyboardType, required this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      onTap: onTap ?? () {},
      obscureText: isPass,
      cursorColor: Colors.black,
      validator: validation ??
          (val) {
            return null;
          },
      keyboardType: keyboardType ?? TextInputType.text,
      controller: textEditingController,
      scrollPadding: EdgeInsets.only(bottom: 40.h),
      style: TextStyle(
        color: AppColors.white.withOpacity(0.4),
      ),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyles.titleStyle14.copyWith(
          color: AppColors.white.withOpacity(0.4),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightBrown,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightBrown,
          ),
        ),
      ),
    );
  }
}

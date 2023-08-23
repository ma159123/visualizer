import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'best_seller_widget.dart';
import '../colors.dart';
import '../text_styles.dart';
import 'add_attachment_widget.dart';
import 'app_text_field.dart';
import 'colored_text.dart';
import 'custom_box.dart';

class JustTry extends StatelessWidget {
  JustTry({Key? key}) : super(key: key);
  List<String> items = [
    'Autocad',
    'Pdf',
    'Sketch',
    'Reference',
    'Mood board',
    '2d elevation',
    'Site photos'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                AppColors.lightGray.withOpacity(0.6),
                AppColors.darkGray,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.6, 1]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BestSellerWidget(),
              AppTextField(
                textEditingController: TextEditingController(),
                hintText: 'Project name',
                validation: (val) {},
                isPass: false,
                maxLine: 1,
              ),
              SizedBox(
                height: 3.h,
              ),
              AppTextField(
                textEditingController: TextEditingController(),
                hintText: 'Mobile number',
                keyboardType: TextInputType.phone,
                validation: (val) {},
                isPass: false,
                maxLine: 1,
              ),
              SizedBox(
                height: 3.h,
              ),
              AppTextField(
                textEditingController: TextEditingController(),
                hintText: 'Please describe about project in detail',
                validation: (val) {},
                isPass: false,
                maxLine: 4,
              ),
              SizedBox(
                height: 2.h,
              ),
              const ColoredText(
                str: 'Documents I have',
                fontSize: 24,
              ),
              SizedBox(height: 2.h,),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 5.w, // spacing between items
                runSpacing: 3.0.h, // spacing between lines
                children: List.generate(
                    items.length,
                    (index) => Text(items[index],
                        style: TextStyles.titleStyle20.copyWith(
                            color: AppColors.white.withOpacity(0.6)))),
              ),
              SizedBox(height: 2.h,),
              const AddAttachmentWidget(),
              SizedBox(height: 5.h,),
              CustomBox(
                height: 5.h,
                width: 40.w,
                text: 'Add to work list',
              ),

            ],
          ),
        ),
      ),
    );
  }
}

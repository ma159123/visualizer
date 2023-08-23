import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/assets_manager.dart';

import '../colors.dart';
import '../text_styles.dart';
import 'add_attachment_widget.dart';
import 'app_text_field.dart';
import 'colored_text.dart';
import 'custom_box.dart';

class InteriorLastSection extends StatelessWidget {
  InteriorLastSection({Key? key , required this.addToWorkButton}) : super(key: key);
  List<String> items = [
    'Autocad',
    'Pdf',
    'Sketch',
    'Reference',
    'Mood board',
    '2d elevation',
    'Site photos'
  ];

  bool addToWorkButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
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
            height: 4.h,
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
                        color: AppColors.white.withOpacity(0.6)),),),
          ),
          SizedBox(height: 5.h,),
          const AddAttachmentWidget(),
          SizedBox(height: 5.h,),
          addToWorkButton ? CustomBox(
            height: 5.h,
            width: 40.w,
            text: 'Add to work list',
          ) : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50.w,
                  child: const ColoredText(str: "Ask quote" , fontSize: 24,)),

              Column(
                children: [
                  Image.asset(AssetsManager.question_mark),
                  const ColoredText(str: "Help" , fontSize: 12,)
                ],
              ),
            ],
          ),
          SizedBox(height: 5.h,),
        ],
      ),
    );
  }
}

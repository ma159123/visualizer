import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../colors.dart';
import '../text_styles.dart';


class AddAttachmentWidget extends StatelessWidget {
  const AddAttachmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/email.png'),),
            SizedBox(width: 10.w,),
            const Image(image: AssetImage('assets/images/galleryadd.png'),),
            SizedBox(width: 10.w,),
            const Image(image: AssetImage('assets/images/document.png'),),
          ],
        ),
        SizedBox(height: 2.h,),
        Text('Add attachments',style: TextStyles.titleStyle16.copyWith(color: AppColors.white.withOpacity(0.4)),),
        SizedBox(height: 2.h,),
        RichText(
          text: TextSpan(
            text: 'Privacy Policy ',
            style:TextStyles.titleStyle14.copyWith(color: AppColors.white),
            children: <TextSpan>[
              TextSpan(
                text: 'and',
                style: TextStyles.titleStyle14.copyWith(color: AppColors.white.withOpacity(0.4)),
              ),
              TextSpan(
                text: ' Terms and conditions ',
                style: TextStyles.titleStyle14.copyWith(color: AppColors.white),
              ),
              TextSpan(
                text: 'apply',
                style: TextStyles.titleStyle14.copyWith(color: AppColors.white.withOpacity(0.4)),
              ),

            ],
          ),
        )

      ],
    );
  }
}

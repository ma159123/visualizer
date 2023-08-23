import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../core/shared_widgets/exterior_screen.dart';
import '../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../core/strings.dart';
import '../apartments/presentation/view/stand_alone_apartment.dart';


class StandAloneView extends StatelessWidget {
  const StandAloneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> _list = ["Apartments" , "Entrance gate" , "Evening view" , "Parking top View" ,"Aerial view" , "Landscape views"];
    List<Widget> widgets = [const StandAloneApartmentView() , Container() , Container() , Container() , Container(), Container()];

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: ScrrensLinearGradient(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExteriorScreen(
              title: AppStrings.stand_alone_title,
              subTitle: AppStrings.sub_title,
              bodyText: AppStrings.stand_alone_text,
              list: _list,
              widgets: widgets,

              //exterior: false,

            ),
            const BrownStage(),
          ],
        ),
      ),
    );
  }
}

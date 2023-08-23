import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/entrance_gate/presentation/view/apart_entrance_gate_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/entrance_lounge/presentation/view/apart_entrance_lounge_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/marketing/presentation/view/apart_marketing_view.dart';

import '../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../core/shared_widgets/exterior_screen.dart';
import '../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../core/strings.dart';
import '../../../../onboarding/presenation/view/onboarding_view.dart';
import '../../../../splash/splash_view.dart';
import '../../gated_villa/street_view/presentation/view/villa_street_view.dart';
import '../../gated_villa/villa/presentation/view/villa_view.dart';
import '../brochure_view/presentation/view/apart_brochure_view.dart';
import '../club_houses/presentation/view/apart_club_house_view.dart';
import '../towers/presentation/view/towers_view.dart';

class GatedApartmentView extends StatelessWidget {
  const GatedApartmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> _list = ["Towers" , "Club house/Sports complex" , "Entrance gate/Bus bay" , "Entrance lounge/Drop off" ,"Marketing/Site office" , "Brochure views"];
    List<Widget> widgets = [const TowersView() , const ApartClubHouseView() , const ApartEntranceGateView() , const ApartEntranceLoungeView() , ApartMarketingView(), ApartBrochureView()];

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
              title: AppStrings.gated_apartment_title,
              subTitle: AppStrings.sub_title,
              bodyText: AppStrings.gated_apartment_text,
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

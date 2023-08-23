import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_villa/entrance_gate/presentation/view/villa_entrance_gate_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_villa/street_view/presentation/view/villa_street_view.dart';
import '../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../core/shared_widgets/exterior_screen.dart';
import '../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../core/strings.dart';
import '../brochure_view/presentation/view/villa_brochure_view.dart';
import '../club_houses/presentation/view/villa_club_house_view.dart';
import '../marketing/presentation/view/villa_marketing_view.dart';
import '../villa/presentation/view/villa_view.dart';

class GatedVillaView extends StatelessWidget {
  const GatedVillaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> _list = ["Villas" , "Club house/Sports complex" , "Entrance gate/Bus bay" , "Street view" , "Marketing/Site offica" , "Brochure views"];
    List<Widget> widgets = [const VillaView() , const VillaClubHouseView() , const VillaEntranceGateView() , const VillaStreetView() , const VillaMarketingView(), const VillaBrochureView()];


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
                title: AppStrings.gated_villa_title,
                subTitle: AppStrings.sub_title,
                bodyText: AppStrings.gated_villa_text,
                list: _list,
                widgets: widgets,

              // exterior: false,

            ),
            const BrownStage(),
          ],
        ),
      ),
    );
  }
}



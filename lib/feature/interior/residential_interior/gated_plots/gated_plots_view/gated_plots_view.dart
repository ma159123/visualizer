import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/brochure_view/presentation/view/apart_brochure_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/club_houses/presentation/view/apart_club_house_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/marketing/presentation/view/apart_marketing_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_plots/landscape/presentation/view/landscape_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_villa/entrance_gate/presentation/view/villa_entrance_gate_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_villa/street_view/presentation/view/villa_street_view.dart';
import '../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../core/shared_widgets/exterior_screen.dart';
import '../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../core/strings.dart';
import '../brochure_view/presentation/view/plot_brochure_view.dart';
import '../club_houses/presentation/view/plot_club_house_view.dart';
import '../entrance_gate/presentation/view/plot_entrance_gate_view.dart';
import '../marketing/presentation/view/plot_marketing_view.dart';
import '../street_view/presentation/view/plot_street_view.dart';

class GatedPlotsView extends StatelessWidget {
  const GatedPlotsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> _list = ["Landscape views" , "Club house/Sports complex" , "Entrance gate/Bus bay" , "Street view" , "Marketing/Site offica" , "Brochure views"];
    List<Widget> widgets = [const LandscapeView() , const PlotClubHouseView() , const PlotEntranceGateView() , const PlotStreetView() , const PlotMarketingView(), const PlotBrochureView()];


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
                title: AppStrings.gated_plots_title,
                subTitle: AppStrings.sub_title,
                bodyText: AppStrings.gated_plots_text,
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



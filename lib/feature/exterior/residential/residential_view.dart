import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:visualizer/core/shared_widgets/exterior_screen.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_apartments/gated_apartment_view/gated_apartment_view.dart';
import 'package:visualizer/feature/interior/residential_interior/gated_plots/gated_plots_view/gated_plots_view.dart';
import 'package:visualizer/feature/interior/residential_interior/stand_alone/stand_alone/stand_alone.dart';
import '../../../../../core/shared_widgets/brown_stage.dart';
import '../../../../../core/shared_widgets/colored_text.dart';
import '../../../../../core/shared_widgets/screens_linear_gradient.dart';
import '../../../../../core/strings.dart';
import '../../interior/residential_interior/farm_houses/presentation/view/farm_house_view.dart';
import '../../interior/residential_interior/gated_villa/gated_villa_view/gated_villa_view.dart';
import '../../interior/residential_interior/miscellaneous/presentation/view/misc_view.dart';



class ResidentialView extends StatelessWidget {
  const ResidentialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    List<String> _list = ["Gated Apartments" , "Gated-Villas" , "Gated-Plots" , "Stand alone/Individual -buildings" , "Farm houses/Bungalow’s" , "Miscellaneous"];
    List<Widget> widgets = [const GatedApartmentView() , const GatedVillaView() , const GatedPlotsView() ,  const StandAloneView() , const FarmHousesView(), MiscellaneousView()];

    fun({Widget? widget}){
      Get.to(() => widget,
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 1000),
      );
    }

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
                title: AppStrings.residential_title,
                subTitle: AppStrings.sub_title,
                bodyText: AppStrings.residenyial_text,
                list: _list,
                widgets: widgets,

               //exterior: true,

            ),
            const BrownStage(),
          ],
        ),
      ),
    );
  }

}

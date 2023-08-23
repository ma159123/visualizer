import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/assets_manager.dart';
import '../../../data/models/onboarding_model.dart';
import 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates>{
  OnBoardingCubit() : super(initialState());

  static OnBoardingCubit get(context){
    return BlocProvider.of(context);
  }

  int current_page = 0;

  List<OnboardingModel> list = [
    OnboardingModel("Who we are", AssetsManager.onboard_icon_1,
        "Team of experts exterior visualizers & interior visualizers,"
            "who specialize in creating modern minimalism vintage retro contemporary styles ",
        "Introducing", AssetsManager.chat_bot),
    OnboardingModel("How app works", AssetsManager.onboard_icon_2,
        "Upload cad drawing/ reference  image send request to all 3d designs, describe your expectations in detail and ask design",
        "Introducing", AssetsManager.hex),
    OnboardingModel(
        "Unlimited corrections", AssetsManager.onboard_icon_3,
        "Make a sketch and good conversation with your ideas,references images & queries ina chat box. On time work delivery",
        "Introducing", AssetsManager.zoom_logo),
  ];

  void onPageChange(int index){
    current_page = index;
    emit(onPageChangeState());
  }
}
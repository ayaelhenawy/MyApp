// ignore_for_file: use_build_context_synchronously

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:myproject/src/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/onboarding_model.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();

  void onChangeToNext() {
    pageController.nextPage(
        duration: const Duration(seconds: 2), curve: Curves.bounceIn);
  }

  Future<void> onCallSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const SignUp(),
      ),
    );
  }

  List data = [
    OnboardingModel(
      image: 'assets/images/photo1.jpg',
      title: 'Lose A Little, Live More',
      subtitle:
          'With the end goal to consume fat off of the stomach and additionally midriff, you should do sit-ups, or crunches whichever you favor',
    ),
    OnboardingModel(
      image: 'assets/images/photo2.jpg',
      title: 'Keep The Heart Healthy',
      subtitle:
          '      Effortless Weight Loss is the easiest way to lose weight With the end goal to consume fat off of the stomach and additionally midriff',
    ),
    OnboardingModel(
      image: 'assets/images/photo3.jpg',
      title: 'Lose A Little, Live More',
      subtitle:
          'Hunder of silent positive weight loss message are feed to your brain each hour',
    ),
  ];
}

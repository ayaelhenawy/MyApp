import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/onboarding_controller_cubit.dart';
import '../components/onboarding_body.dart';
import '../components/onboarding_bottons.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
        create: (context) => OnboardingControllerCubit(),
        child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit controller = context.read<OnboardingControllerCubit>();
            return Scaffold(
              body: OnboardingBody(
                controller: controller,
              ),
              bottomNavigationBar: OnboardingButtonWidget(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}
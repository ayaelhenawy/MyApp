import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/dashboard_controller.dart';
import '../../controller/dashboerd_state.dart';

class MyDesign extends StatelessWidget{
  const MyDesign({super.key, required this.controller});
  final DashBoardController controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<DashBoardController,DashBoardState>(

        builder: (context,state){

          final DashBoardController controller= context.read<DashBoardController>();
          return PageView(
            controller: controller.pageController,
            onPageChanged: controller.onChangeTapIndex,
            children: const [
              Text("home"),
              Text("Services"),
              Text("Users"),
            ],

          );
        },
      ),
    );
  }

}
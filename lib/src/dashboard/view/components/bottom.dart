import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/dashboard_controller.dart';
import '../../controller/dashboerd_state.dart';

class MyBottom extends StatelessWidget{
  const MyBottom({super.key, required this.controller});
  final DashBoardController controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<DashBoardController,DashBoardState>(
        builder: (context,state){
          final DashBoardController controller= context.read<DashBoardController>();
          return BottomNavigationBar(
            currentIndex: controller.selectedTapIndex,
            onTap: controller.onChangeTapIndex,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.red,
            ),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
              BottomNavigationBarItem(icon: Icon(Icons.category),label:'services'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label:'users'),
            ],
          );
        },
      ),
    );
  }

}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {


  PageController pageController = PageController();
  int currentIndex = 0;
  void onChangeTap(int index){
    currentIndex = index;
    pageController.jumpToPage(index);
    emit(DashboardInitial());
  }
  DashboardCubit() : super(DashboardInitial());
}

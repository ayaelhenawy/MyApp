import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  PageController pageController = PageController();
  int currentIndex = 0;
  void onChangeTap(int index) {
    currentIndex = index;
    pageController.jumpToPage(index);
    emit(DashboardInitial());
  }

  DashboardCubit() : super(DashboardInitial());
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  bool isStateManagment = true;

  int currentIndex = 0;

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(MainBottomNavState());
  }
}

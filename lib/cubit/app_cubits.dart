import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/cubit/app_cubit_states.dart';
import 'dart:convert';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(MainPageState());
    } catch (e) {
      print(e);
    }
  }

  void getDetails(pic) {
    try {
      emit(DetailsPageState(pic));
    } catch (e) {
      print(e);
    }
  }
}

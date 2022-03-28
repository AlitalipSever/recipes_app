import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(MainPageState());
      // ignore: empty_catches
    } catch (e) {}
  }

  void getDetails(pic) {
    try {
      emit(DetailsPageState(pic));
      // ignore: empty_catches
    } catch (e) {}
  }

  void getCategory(category, name) {
    try {
      emit(CategoryPageState(category, name));
      // ignore: empty_catches
    } catch (e) {}
  }

  void setEmail(email) {
    try {
      if (email == "ats") {
        emit(EmailState(email));
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  void setPassword(password) {
    try {
      if (password == "svr") {
        emit(PasswordState(password));
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  void getLogin() {
    try {
      emit(LoginLoadingPageState());
      // ignore: empty_catches
    } catch (e) {}
  }

  void getLoginPage() {
    try {
      emit(LoginPageState());
      // ignore: empty_catches
    } catch (e) {}
  }
}

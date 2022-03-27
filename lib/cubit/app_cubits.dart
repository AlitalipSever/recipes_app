import 'package:bloc/bloc.dart';
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
}

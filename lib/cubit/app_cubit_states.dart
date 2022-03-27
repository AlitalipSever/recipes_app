import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class MainPageState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DetailsPageState extends CubitStates {
  Map detail;

  DetailsPageState(this.detail);
  @override
  // TODO: implement props
  List<Object?> get props => [detail];
}

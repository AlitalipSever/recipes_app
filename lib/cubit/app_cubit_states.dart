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
  List<Object?> get props => [detail];
}

class CategoryPageState extends CubitStates {
  List category;
  String name;

  CategoryPageState(this.category, this.name);
  @override
  List<Object?> get props => [category, name];
}

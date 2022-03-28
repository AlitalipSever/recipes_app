import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class MainPageState extends CubitStates {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class DetailsPageState extends CubitStates {
  Map detail;

  DetailsPageState(this.detail);
  @override
  List<Object?> get props => [detail];
}

// ignore: must_be_immutable
class CategoryPageState extends CubitStates {
  List category;
  String name;

  CategoryPageState(this.category, this.name);
  @override
  List<Object?> get props => [category, name];
}

// ignore: must_be_immutable
class EmailState extends CubitStates {
  String email;

  EmailState(this.email);
  @override
  List<Object?> get props => [email];
}

// ignore: must_be_immutable
class PasswordState extends CubitStates {
  String password;

  PasswordState(this.password);
  @override
  List<Object?> get props => [password];
}

class LoginLoadingPageState extends CubitStates {
  LoginLoadingPageState();
  @override
  List<Object?> get props => [];
}

class LoginPageState extends CubitStates {
  LoginPageState();
  @override
  List<Object?> get props => [];
}

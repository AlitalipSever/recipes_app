import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubit_states.dart';
import 'package:recipes_app/cubit/app_cubits.dart';
import 'package:recipes_app/pages/category_page.dart';
import 'package:recipes_app/pages/details_page.dart';
import 'package:recipes_app/pages/login_loading_page.dart';
import 'package:recipes_app/pages/login_page.dart';
import 'package:recipes_app/pages/welcome_page.dart';

import '../pages/navpages/main_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      if (state is WelcomeState) {
        return const WelcomePage();
      } else if (state is MainPageState) {
        return const MainPage();
      } else if (state is DetailsPageState) {
        return const DetailsPage();
      } else if (state is CategoryPageState) {
        return const CategoryPage();
      } else if (state is LoginLoadingPageState) {
        return const LoginLoadingPage();
      } else if (state is LoginPageState) {
        return const LoginPage();
      } else {
        return Container();
      }
    }));
  }
}

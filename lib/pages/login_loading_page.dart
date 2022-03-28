import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubits.dart';

import '../cubit/app_cubit_states.dart';

class LoginLoadingPage extends StatelessWidget {
  const LoginLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is EmailState) {
          String email = state.email;
          if (email == "ats@gmail.com") {
            BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
              if (state is PasswordState) {
                String password = state.password;
                if (password == "svr") {
                  BlocProvider.of<AppCubits>(context).getData();
                }
                return Container();
              } else {
                return Container();
              }
            });
          }
          return Container();
        } else {
          return Container();
        }
      }),
    );
  }
}

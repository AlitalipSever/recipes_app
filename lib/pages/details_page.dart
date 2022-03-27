import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubit_states.dart';
import '../cubit/app_cubits.dart';
import '../widgets/responsive_button_back.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is DetailsPageState) {
          Map info = state.detail;
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 50.0),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppCubits>(context).getData();
                    },
                    child: Container(
                      width: 200,
                      child: ResponsiveButtonBack(
                        width: 200,
                      ),
                    ),
                  ),
                  Text(
                    info['name'],
                    style: const TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 150.0,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(info['image']),
                                fit: BoxFit.fill))),
                  ),
                  const Text(
                    "Receipe",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    info['desc'],
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}

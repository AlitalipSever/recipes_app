import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/widgets/slide_items_vertical.dart';

import '../cubit/app_cubit_states.dart';
import '../cubit/app_cubits.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      if (state is CategoryPageState) {
        List info = state.category;
        String name = state.name;
        return Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              const SizedBox(height: 40.0),
              Text(
                name,
                style: const TextStyle(fontSize: 18),
              ),
              SlideItemsVertical(
                pics: info,
              )
            ]));
      } else {
        return Container();
      }
    }));
  }
}

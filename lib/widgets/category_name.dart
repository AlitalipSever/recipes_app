import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubits.dart';
import 'package:recipes_app/widgets/app_large_text.dart';
import 'package:recipes_app/widgets/app_text.dart';

class CategoryName extends StatelessWidget {
  final String name;
  final List category;
  const CategoryName({Key? key, required this.name, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AppLargeText(
            text: name,
            size: 20,
          ),
          GestureDetector(
            onTap: () {
              BlocProvider.of<AppCubits>(context).getCategory(category, name);
            },
            child: AppText(
              text: "wiev all",
              color: Colors.black54,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}

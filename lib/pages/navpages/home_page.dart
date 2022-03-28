import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/category_name.dart';
import 'package:recipes_app/widgets/slide_items.dart';
import 'package:recipes_app/data/recipes_mock_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  var recipe_pics = recipePics;
  // ignore: non_constant_identifier_names
  var recipe_pics2 = recipePics;
  // ignore: non_constant_identifier_names
  var recipe_pics3 = recipePics;
  // ignore: non_constant_identifier_names
  var recipe_pics4 = recipePics;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const SizedBox(height: 50.0),
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 18),
                  ),
                  CategoryName(name: "Category-1", category: recipe_pics),
                  SlideItems(
                    pics: recipe_pics,
                  ),
                  CategoryName(name: "Category-2", category: recipe_pics2),
                  SlideItems(
                    pics: recipe_pics2,
                  ),
                  CategoryName(name: "Category-3", category: recipe_pics3),
                  SlideItems(
                    pics: recipe_pics3,
                  ),
                  CategoryName(name: "Category-4", category: recipe_pics4),
                  SlideItems(
                    pics: recipe_pics4,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

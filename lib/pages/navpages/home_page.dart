import 'package:flutter/material.dart';

import 'package:recipes_app/widgets/slide_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List recipe_pics = [
    "assets/recipe_pics/one-1.jpeg",
    "assets/recipe_pics/one-2.jpeg",
    "assets/recipe_pics/one-3.jpeg",
    "assets/recipe_pics/one-4.jpeg",
    "assets/recipe_pics/one-5.jpeg",
    "assets/recipe_pics/one-6.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Headline',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Demo Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            SlideItems(
              pics: recipe_pics,
            ),
            const Text(
              'Demo Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            SlideItems(
              pics: recipe_pics,
            ),
            const Text(
              'Demo Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            SlideItems(
              pics: recipe_pics,
            )
          ],
        ),
      ),
    );
  }
}

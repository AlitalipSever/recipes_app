import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/slide_items.dart';
import 'package:recipes_app/data/recipes_mock_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var recipe_pics = recipePics;

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

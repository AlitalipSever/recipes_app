import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubits.dart';
import 'package:recipes_app/widgets/app_large_text.dart';
import 'package:recipes_app/widgets/app_text.dart';
import 'package:recipes_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "assets/images/welcome-one.png",
    "assets/images/welcome-two.png",
    "assets/images/welcome-three.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 150, left: 20, right: 20, bottom: 300),
                  color: Colors.black.withOpacity(0.1),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(
                            text: "Best Recipes",
                            color: Colors.red,
                          ),
                          AppText(
                            text: "From around the world",
                            color: Colors.white,
                            size: 30,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 250,
                            child: AppText(
                                text: "Lorem Ipsum Soler di amet",
                                size: 14,
                                color: Colors.blue),
                          ),
                          const SizedBox(height: 40),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubits>(context).getData();
                            },
                            child: Container(
                              width: 200,
                              child: ResponsiveButton(
                                width: 200,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

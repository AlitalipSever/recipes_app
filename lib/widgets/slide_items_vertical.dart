import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubit/app_cubits.dart';

class SlideItemsVertical extends StatelessWidget {
  final List pics;
  const SlideItemsVertical({Key? key, required this.pics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.0,
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: pics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(right: 15, top: 15),
              width: 150,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<AppCubits>(context).getDetails(pics[index]);
                },
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(pics[index]["image"]),
                      fit: BoxFit.fill)),
            );
          }),
    );
  }
}

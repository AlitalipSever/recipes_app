import 'package:flutter/material.dart';

class SlideItems extends StatelessWidget {
  List pics;
  SlideItems({Key? key, required this.pics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: pics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.only(right: 15, top: 15),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(pics[index]), fit: BoxFit.fill)));
          }),
    );
  }
}

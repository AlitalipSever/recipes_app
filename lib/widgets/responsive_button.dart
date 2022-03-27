import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 151, 159, 11)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.keyboard_double_arrow_right)],
        ));
  }
}

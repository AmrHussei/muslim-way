import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ScreensBackground extends StatelessWidget {
  ScreensBackground({Key? key, required this.image}) : super(key: key);

  String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}

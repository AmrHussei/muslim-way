import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muslim_way/core/assets_data.dart';

class TaspehAndTakbeerScreen extends StatelessWidget {
  const TaspehAndTakbeerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(taspehBg),
    );
  }
}

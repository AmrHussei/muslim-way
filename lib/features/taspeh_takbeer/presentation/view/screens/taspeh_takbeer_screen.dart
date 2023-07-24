import 'package:flutter/material.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/back_button.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_takbeer_widgets/items.dart';
import 'package:muslim_way/core/screen_name.dart';
import 'package:muslim_way/core/screens_background.dart';

class TaspehAndTakbeerScreen extends StatelessWidget {
  const TaspehAndTakbeerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          ScreensBackground(
            image: prayerBg,
          ),
          const ButtonToBack(color: Colors.white),
          const ScreenName(text: 'التسبيح', color: Colors.white),
          const Items(),
        ]),
      ),
    );
  }
}

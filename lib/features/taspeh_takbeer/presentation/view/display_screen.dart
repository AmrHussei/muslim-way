import 'package:flutter/material.dart';
import 'package:muslim_way/core/back_button.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/display_screen_Widgets/taspeh_body_widget.dart';
import 'package:muslim_way/core/screen_name.dart';
import 'package:muslim_way/core/screens_background.dart';
import '../../../../core/assets_data.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen(
      {super.key, required this.centerText, required this.totalText, required this.appBarText, required this.incrementID});
  final String centerText;
  final String totalText;
  final String appBarText;
    final String incrementID;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreensBackground(
              image: displayScreenImage,
            ),
             ScreenName(text: appBarText,color: Colors.white),
            const ButtonToBack(color: Colors.white),
            DisplayBodyWidget(centerText: centerText, totalText: totalText,incrementID: incrementID),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/back_button.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/screen_name.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_screen_Widgets/taspeh_body_widget.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_takbeer_widgets/tespeh_background.dart';
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
            TespehBackground(
              image: displayScreenImage,
            ),
             ScreenName(text: appBarText),
            const ButtonToBack(),
            DisplayBodyWidget(centerText: centerText, totalText: totalText,incrementID: incrementID),
          ],
        ),
      ),
    );
  }
}

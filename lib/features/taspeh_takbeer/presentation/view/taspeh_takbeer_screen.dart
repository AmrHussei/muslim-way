import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/features/home/presentation/view/Widgets/app_features_widget.dart';
import 'package:muslim_way/core/back_button.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_takbeer_widgets/build_item.dart';
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
            image: taspehBg,
          ),
          const ButtonToBack(color: Colors.white),
          const ScreenName(text: 'التسبيح', color: Colors.white),
          const Items(),
        ]),
      ),
    );
  }
}

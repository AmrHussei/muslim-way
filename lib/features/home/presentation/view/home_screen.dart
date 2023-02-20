import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';

import 'Widgets/app_features_widget.dart';
import 'Widgets/app_name_widget.dart';
import 'Widgets/background.dart';
import 'Widgets/center_aya_box.dart';
import 'Widgets/quran_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            Background(),
            Padding(
              padding: EdgeInsets.only(
                  top: 20.h, left: 15.h, right: 15.h, bottom: 15.h),
              child: Column(
                children: [
                  AppNameWidget(),
                  SizedBox(
                    height: 75.h,
                  ),
                  CenterAyaBox(),
                  SizedBox(
                    height: 25.h,
                  ),
                  AppFeatures(),
                ],
              ),
            ),
            QuranImageWidget(),
          ],
        ),
      ),
    );
  }
}

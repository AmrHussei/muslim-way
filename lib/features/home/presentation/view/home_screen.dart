import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';

import 'Widgets/app_features_widget.dart';
import 'Widgets/app_name_widget.dart';
import 'Widgets/background.dart';
import 'Widgets/center_aya_box.dart';
import 'Widgets/quran_image_widget.dart';
import 'Widgets/settings_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: const [
            Background(),
            AppNameWidget(),
            SettingsWidget(),
            CenterAyaBox(),
            QuranImageWidget(),
            AppFeatures(),
          ],
        ),
      ),
    );
  }
}

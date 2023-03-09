import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/core/widgets/text_utils.dart';
import 'package:muslim_way/features/prayer_time/presentation/view/screens/prayer_time_screen.dart';
import '../../../../../core/app_bar_widget.dart';
import '../../../../../core/screens_background.dart';
import '../../../../../helper/location_helper.dart';

class DetectLocationScreen extends StatelessWidget {
  const DetectLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreensBackground(image: prayerBg),
            Column(
              children: [
                SizedBox(
                  height: 28.h,
                ),
                const AppBarWidget(
                  text: 'مواقيت الصلاة',
                  color: Colors.white,
                ),
                SizedBox(height: 85.h),
                TextUtils(
                  color: MyColors.myGreen,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                  text: 'حدد موقعك',
                  underLine: TextDecoration.none,
                ),
                Text(
                  'لتحصل علي مواقيت صلاة صحيحة',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.names,
                    height: 1.2,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  height: 340,
                  width: double.infinity,
                  child: Image.asset(
                    detectLocationPng,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 60.h),
                ElevatedButton(
                  onPressed: () async {
                    await LocationHelper.getCurrentLocation();
                    Get.to(PrayerTimeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.sp)),
                    backgroundColor: MyColors.myGreen,
                    padding:
                        EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
                  ),
                  child: TextUtils(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      text: 'التعرف التلقائي علي الموقع',
                      color: Colors.white,
                      underLine: TextDecoration.none),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

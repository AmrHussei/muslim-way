import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:get/get.dart' as get_navigation;
import 'package:muslim_way/features/morning_and_evening-prayers/presentation/view/prayers_screen.dart';
import 'package:muslim_way/features/prayer_time/presentation/view/screens/prayer_time_screen.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/taspeh_takbeer_screen.dart';

import '../../../../Islamic_events/presentation/view/Islamic_events_screen.dart';
import '../../../../quran/presentation/view/index_sura_of_quran_screen.dart';

class AppFeatures extends StatelessWidget {
  const AppFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.w,
              crossAxisCount: 2,
              children: <Widget>[
                //const List featuresLogo = [books, quranLogo, azaan, taspeh, taspeh, taspeh];
                BuildItem(
                  image: azkar,
                  text: 'اذكار الصباح و المساء',
                  onTap: (() => get_navigation.Get.to(const PrayersScreen(),
                      transition: get_navigation.Transition.zoom,
                      duration: transitionDuration)),
                ),
                BuildItem(
                  image: quranLogo,
                  text: 'القرأن الكريم',
                  onTap: (() => get_navigation.Get.to(const IndexSurahOfQuran(),
                      transition: get_navigation.Transition.zoom,
                      duration: transitionDuration)),
                ),
                BuildItem(
                  image: azaan,
                  text: 'مواقيت الصلاة',
                  onTap: (() => get_navigation.Get.to(const PrayerTimeScreen(),
                      transition: get_navigation.Transition.zoom,
                      duration: transitionDuration)),
                ),
                BuildItem(
                  image: taspeh,
                  text: 'التسبيح',
                  onTap: (() => get_navigation.Get.to(
                      const TaspehAndTakbeerScreen(),
                      transition: get_navigation.Transition.zoom,
                      duration: transitionDuration)),
                ),
                BuildItem(
                  image: eid,
                  text: 'الأعياد الاسلامية',
                  onTap: (() => get_navigation.Get.to(const IslamicEvents(),
                      transition: get_navigation.Transition.zoom,
                      duration: transitionDuration)),
                ),
                /*  BuildItem(
                  image: books,
                  text: 'كتب الحديث',
                  onTap: (() => null),
                ), 
                */
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildItem extends StatelessWidget {
  const BuildItem({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String image;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 145.h,
        width: 145.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.sp),
          boxShadow: [
            BoxShadow(
              color: MyColors.shadowOfFeatures.withAlpha(90),
              blurRadius: 10.sp,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
              width: 50.h,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              text,
              style: GoogleFonts.elMessiri(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

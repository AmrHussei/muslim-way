import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/constant.dart';
import 'package:get/get.dart' as get_navigation;
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/taspeh_takbeer_screen.dart';

class AppFeatures extends StatelessWidget {
  const AppFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 445.h,
        ),
        SizedBox(
          height: 332.h,
          child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      //const List featuresLogo = [books, quranLogo, azaan, taspeh, taspeh, taspeh];
                      BuildItem(image: books, text: 'كتب الحديث'),
                      BuildItem(image: quranLogo, text: 'القرأن الكريم'),
                      BuildItem(image: azaan, text: 'المؤذن'),
                      BuildItem(image: taspeh, text: 'التسبيح'),
                      BuildItem(image: eid, text: 'الأعياد الاسلامية'),
                      BuildItem(image: azkar, text: 'اذكار الصباح و المساء'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class BuildItem extends StatelessWidget {
  BuildItem({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.w, right: 20.w, top: 5.w, left: 5),
      child: InkWell(
        onTap: () {
          get_navigation.Get.to(const TaspehAndTakbeerScreen(),
              transition: get_navigation.Transition.zoom,
              duration: transitionDuration);
        },
        child: Container(
          height: 150.h,
          width: 150.h,
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
      ),
    );
  }
}

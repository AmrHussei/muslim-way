import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/constant.dart';

class CenterAyaBox extends StatelessWidget {
  const CenterAyaBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 245.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            MyColors.gradient1,
            MyColors.gradient2,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.sp,
            spreadRadius: 0,
            offset: const Offset(0, 15), // Shadow position
          ),
        ],
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 26.h,
          ),
          const BasmalaWidget(),
          SizedBox(
            height: 17.h,
          ),
          const AyahWidget(),
          SizedBox(
            height: 12.h,
          ),
          const DataOfAyah()
        ],
      ),
    );
  }
}

class DataOfAyah extends StatelessWidget {
  const DataOfAyah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 42.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //TODO: اسم السوره ورقم الايه /////////////////////////////////
        children: [
          Text(
            '() ايه رقم',
            style: GoogleFonts.elMessiri(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
          Text(
            ' () سورة البقرة',
            style: GoogleFonts.elMessiri(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class AyahWidget extends StatelessWidget {
  const AyahWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: SizedBox(
        //TODO : الايه
        height: 130.h, //124
        width: 306.w,
        child: ListView(
          children: [
            Text(
              '''اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ
 مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ
 عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ
بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ
وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. ''',
              style: GoogleFonts.elMessiri(
                  color: Colors.white, fontSize: 15.sp, height: 1.5.sp),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class BasmalaWidget extends StatelessWidget {
  const BasmalaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'بِسْمِ ٱللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
      style: GoogleFonts.elMessiri(
          color: Colors.white,
          fontSize: 17.sp,
          height: 1.7,
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    );
  }
}

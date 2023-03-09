import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/constant_of_quran.dart';
import '../surah_viewer.dart';
import 'arabic_sura_number.dart';

Container indexCreator(quran, context) {
  return Container(
    color: const Color.fromARGB(255, 221, 250, 236),
    child: ListView(
      children: [
        for (int indexOfSura = 0; indexOfSura < 114; indexOfSura++)
          Container(
            color: indexOfSura % 2 == 0
                ? Colors.white
                : MyColors.myGreen.withAlpha(5),
            child: TextButton(
              child: Row(
                children: [
                  ArabicSuraNumber(indexOfSura: indexOfSura),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    arabicName[indexOfSura]['name'],
                    style: GoogleFonts.elMessiri(
                        fontSize: 27.sp,
                        color: MyColors.names,
                        shadows: [
                          Shadow(
                            offset: Offset(.5, .5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(255, 130, 130, 130),
                          )
                        ]),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
              onPressed: () {
                fabIsClicked = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahBuilder(
                      arabic: quran[0],
                      sura: indexOfSura,
                      suraName: arabicName[indexOfSura]['name'],
                      ayah: 0,
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    ),
  );
}

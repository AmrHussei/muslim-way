import 'package:flutter/material.dart';
import 'package:muslim_way/features/quran/presentation/view_model/to_arabic_no_converter.dart';

class ArabicSuraNumber extends StatelessWidget {
  const ArabicSuraNumber({Key? key, required this.indexOfSura})
      : super(key: key);
  final int indexOfSura;
  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: prefer_interpolation_to_compose_strings
      "\uFD3E" + (indexOfSura + 1).toString().toArabicNumbers + "\uFD3F",
      style: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontFamily: 'me_quran',
          fontSize: 20,
          shadows: [
            Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: Colors.amberAccent,
            ),
          ]),
    );
  }
}

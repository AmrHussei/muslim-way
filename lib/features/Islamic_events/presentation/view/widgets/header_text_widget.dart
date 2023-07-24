import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

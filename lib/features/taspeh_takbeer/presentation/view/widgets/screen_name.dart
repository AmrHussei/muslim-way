import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenName extends StatelessWidget {
  const ScreenName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35.h,
      right: 165.w,
      child: Text(
        text,
        style: GoogleFonts.elMessiri(
          color: Colors.white,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

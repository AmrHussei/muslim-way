import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 28.h,
      left: 136.w,
      child: Text(
        'طريق المسلم',
        style: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}

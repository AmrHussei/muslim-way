import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key, required this.text, required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: GoogleFonts.elMessiri(
            color: color,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 95.w,
        ),
        IconButton(
          onPressed: (() {
            Get.back();
          }),
          icon: Icon(
            Icons.arrow_forward,
            size: 26.sp,
            color: color,
          ),
        ),
        SizedBox(
          width: 4.w,
        )
      ],
    );
  }
}
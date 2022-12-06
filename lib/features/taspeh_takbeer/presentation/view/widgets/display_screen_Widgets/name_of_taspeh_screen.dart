import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constant.dart';

class NameOfScreen extends StatelessWidget {
  const NameOfScreen({
    Key? key,
    required this.centerText,
  }) : super(key: key);
  final String centerText;

  @override
  Widget build(BuildContext context) {
    return Center(
     
      child: Text(
        centerText,
        style: GoogleFonts.elMessiri(
          color: MyColors.names,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

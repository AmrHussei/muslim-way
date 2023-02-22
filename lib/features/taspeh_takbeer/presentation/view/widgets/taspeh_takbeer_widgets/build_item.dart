import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/display_screen.dart';

import '../../../../../../core/utils/constant.dart';

class BuildTaspehItem extends StatelessWidget {
  const BuildTaspehItem({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20.w,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 150.w,
          width: 150.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.sp),
            boxShadow: [
              BoxShadow(
                color: MyColors.shadowOfFeatures.withAlpha(70),
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
                height: 15.h,
              ),
              Text(
                text,
                style: GoogleFonts.elMessiri(
                  color: MyColors.taspehColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

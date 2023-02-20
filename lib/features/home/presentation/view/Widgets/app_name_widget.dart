import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/assets_data.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 18.w,
          width: 18.w,
          child: InkWell(
              //TODO: Go to settins******************************
              onTap: () {},
              child: SvgPicture.asset(
                settings,
                fit: BoxFit.fill,
              )),
        ),
        Text(
          'طريق المسلم',
          style: GoogleFonts.elMessiri(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500),
        ),
        Container()
      ],
    );
  }
}

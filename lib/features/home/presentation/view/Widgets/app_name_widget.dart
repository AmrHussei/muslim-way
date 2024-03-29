import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /*    SizedBox(
          height: 18.w,
          width: 18.w,
          child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                settings,
                fit: BoxFit.fill,
              )),
        ),*/
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

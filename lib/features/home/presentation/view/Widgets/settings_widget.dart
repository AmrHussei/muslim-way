import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/assets_data.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 28.h,
      left: 16.w,
      child: SizedBox(
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
    );
  }
}

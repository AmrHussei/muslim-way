import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_data.dart';

class QuranImageWidget extends StatelessWidget {
  const QuranImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 260.h,
      right: 10.w,
      child: SizedBox(
        height: 140.h,
        width: 200.w,
        child: Image.asset(
          quranI,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

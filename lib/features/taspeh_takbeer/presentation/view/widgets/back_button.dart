import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonToBack extends StatelessWidget {
  const ButtonToBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 26.h,
      right: 4.w,
      child: IconButton(
          onPressed: (() {
            Get.back();
          }),
          icon: Icon(
            Icons.arrow_forward,
            size: 26.sp,
            color: Colors.white,
          )),
    );
  }
}

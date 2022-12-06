import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonToBack extends StatelessWidget {
  const ButtonToBack({
    Key? key, required this.color,
  }) : super(key: key);
  final Color color;

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
            color: color,
          )),
    );
  }
}

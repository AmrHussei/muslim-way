import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constant.dart';
import '../../../view_model/cubit/taspeh_takbeer_cubit.dart';

class ButtonToIncrement extends StatelessWidget {
  const ButtonToIncrement({
    Key? key,
    required this.incrementID,
  }) : super(key: key);
  final String incrementID;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        BlocProvider.of<TaspehTakbeerCubit>(context)
            .incrementMainNum(incrementID);
        BlocProvider.of<TaspehTakbeerCubit>(context)
            .incrementTotalNum(incrementID);
        BlocProvider.of<TaspehTakbeerCubit>(context)
            .incrementGroupNum(incrementID);
      }),
      child: Container(
        height: 80.h,
        width: 235.w,
        decoration: BoxDecoration(
          color: MyColors.displayButton,
          borderRadius: BorderRadius.circular(20.sp),
          boxShadow: [
            BoxShadow(
              color: MyColors.displayButtontext,
              blurRadius: 8.sp,
              blurStyle: BlurStyle.solid,
              offset: const Offset(8, 12),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'اضغط هنا',
            style: GoogleFonts.elMessiri(
              color: MyColors.displayButtontext,
              fontSize: 25.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view_model/cubit/taspeh_takbeer_cubit.dart';

import '../../../../../../core/utils/constant.dart';

class TotalNum extends StatelessWidget {
  const TotalNum({
    Key? key,
    required this.totalText,
  }) : super(key: key);
  final String totalText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          totalText,
          style: GoogleFonts.elMessiri(
            color: MyColors.names,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        //TODO : get this num from bloc function by taspeh scrren
        SizedBox(
          height: 36.h,
          child: BlocBuilder<TaspehTakbeerCubit, TaspehTakbeerState>(
            builder: ((context, state) {
              if (state is Taspeh) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).totalTaspehNums}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Takbeer) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).totalTakbeerNums}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Estkhfar) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).totalEstkhfarNums}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Hwkala) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).totalHwkalaNums}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else {
                return Text(
                  'اضغط في الاسفل ',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              }
            }),
          ),
        ),
        SizedBox(height: 14.h),
        Container(
          color: MyColors.nums,
          height: 1,
          width: 130.w,
        ),
      ],
    );
  }
}

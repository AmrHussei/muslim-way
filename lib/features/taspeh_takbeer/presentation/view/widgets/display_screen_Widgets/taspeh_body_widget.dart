import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/display_screen_Widgets/button_to_increment_taspeh.dart';

import 'package:muslim_way/features/taspeh_takbeer/presentation/view_model/cubit/taspeh_takbeer_cubit.dart';

import '../../../../../../core/utils/constant.dart';
import 'name_of_taspeh_screen.dart';

class DisplayBodyWidget extends StatelessWidget {
  const DisplayBodyWidget({
    Key? key,
    required this.centerText,
    required this.totalText,
    required this.incrementID,
  }) : super(key: key);
  final String centerText;
  final String totalText;
  final String incrementID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 140.h,
          ),
          NameOfScreen(centerText: centerText),
          SizedBox(
            height: 43.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              //   TotalNum(totalText: totalText),
              //  SizedBox(
              //    width: 13.w,
              //     ),
              //  TotalRestart(incrementID: incrementID),
              //       SizedBox(
              //       width: 13.w,
              //    ),
              GroupNums()
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          MainNumberThatChangeEveryTap(incrementID: incrementID),
          SizedBox(
            height: 95.h,
          ),
          ButtonToIncrement(
            incrementID: incrementID,
          )
        ],
      ),
    );
  }
}

//**************************** */
class MainNumberThatChangeEveryTap extends StatelessWidget {
  const MainNumberThatChangeEveryTap({
    Key? key,
    required this.incrementID,
  }) : super(key: key);
  final String incrementID;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90.w,
        ),
        Container(
          height: 150.w,
          width: 150.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: MyColors.shadowOfFeatures.withAlpha(60),
                blurRadius: 10.sp,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Container(
              height: 170.w,
              width: 170.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: MyColors.shadowOfFeatures.withAlpha(50),
                    blurRadius: 10.sp,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Center(
                child: BlocBuilder<TaspehTakbeerCubit, TaspehTakbeerState>(
                  builder: ((context, state) {
                    if (state is Taspeh) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).taspehNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.mainNum,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Takbeer) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).takbeerNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.mainNum,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Estkhfar) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).estkhfarNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.mainNum,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Hwkala) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).hwkalaNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.mainNum,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else {
                      return Text(
                        'اضغط في الاسفل',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.mainNum,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }
                  }),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 35.w,
        ),
        RestartTheMainNum(
          incrementID: incrementID,
        )
      ],
    );
  }
}

class RestartTheMainNum extends StatelessWidget {
  const RestartTheMainNum({
    Key? key,
    required this.incrementID,
  }) : super(key: key);
  final String incrementID;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        BlocProvider.of<TaspehTakbeerCubit>(context)
            .restartMainNum(incrementID);
      }),
      child: SizedBox(
        height: 36.w,
        width: 36.w,
        child: Image.asset(
          restart,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

//**************************** */
class GroupNums extends StatelessWidget {
  const GroupNums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'الدورة',
          style: GoogleFonts.elMessiri(
            color: MyColors.names,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 36.h,
          child: BlocBuilder<TaspehTakbeerCubit, TaspehTakbeerState>(
            builder: ((context, state) {
              if (state is Taspeh) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).taspehGroupNum}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Takbeer) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).takbeerGroupNum}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Estkhfar) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).estkhfarGroupNum}',
                  style: GoogleFonts.elMessiri(
                    color: MyColors.nums,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else if (state is Hwkala) {
                return Text(
                  '${BlocProvider.of<TaspehTakbeerCubit>(context).hwkalaGroupNum}',
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/features/morning_and_evening-prayers/presentation/view_model/cubit/paryers_cubit.dart';

import '../../../../../core/assets_data.dart';
import '../../../../../core/constant.dart';

class MorningPrayers extends StatelessWidget {
  const MorningPrayers({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              itemCount: MorningPrayersText.textList.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    MainPrayersText(
                      text: MorningPrayersText.textList[index],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
                      child: MaterialButton(
                        onPressed: (() {
                          BlocProvider.of<ParyersCubit>(context)
                              .changeParyerMorningNum(index);
                        }),
                        color: MyColors.prayers,
                        height: 44.h,
                        minWidth: 300.w,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.sp),
                        ),
                        child: Center(
                          child: BlocConsumer<ParyersCubit, ParyersState>(
                            builder: ((context, state) => Text(
                                  '${BlocProvider.of<ParyersCubit>(context).morningPrayersListNum[index]}',
                                  style: GoogleFonts.elMessiri(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                            listener: ((context, state) {}),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }))),
    );
  }
}

class MainPrayersText extends StatelessWidget {
  const MainPrayersText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.elMessiri(
        color: MyColors.names,
        fontSize: 15.sp,
        height: 1.9,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

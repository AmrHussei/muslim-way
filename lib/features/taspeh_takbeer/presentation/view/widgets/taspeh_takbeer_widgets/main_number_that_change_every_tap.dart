import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_takbeer_widgets/RestartTheMainNum_widget.dart';

import '../../../../../../core/utils/constant.dart';
import '../../../view_model/cubit/taspeh_takbeer_cubit.dart';

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
                          color: MyColors.myGreen,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Takbeer) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).takbeerNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.myGreen,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Estkhfar) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).estkhfarNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.myGreen,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else if (state is Hwkala) {
                      return Text(
                        '${BlocProvider.of<TaspehTakbeerCubit>(context).hwkalaNum}',
                        style: GoogleFonts.elMessiri(
                          color: MyColors.myGreen,
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

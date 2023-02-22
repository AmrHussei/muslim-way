import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_way/core/utils/constant.dart';

import '../../../../../../core/assets_data.dart';
import '../../../view_model/cubit/taspeh_takbeer_cubit.dart';

class TotalRestart extends StatelessWidget {
  const TotalRestart({
    Key? key,
    required this.incrementID,
  }) : super(key: key);
  final String incrementID;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          //TODO:  total restart function
          onTap: () {
            BlocProvider.of<TaspehTakbeerCubit>(context)
                .restartTotalNum(incrementID);
          },
          child: SizedBox(
            height: 28.h,
            width: 28.h,
            child: Image.asset(
              totalRestart,
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}

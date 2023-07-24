import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets_data.dart';
import '../../../view_model/cubit/taspeh_takbeer_cubit.dart';

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

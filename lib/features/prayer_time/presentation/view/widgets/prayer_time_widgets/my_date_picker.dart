import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/utils/constant.dart';
import '../../../view_model/cubit/prayet_times_cubit.dart';

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      initialSelectedDate: DateTime.now(),
      selectionColor: MyColors.names,
      selectedTextColor: Colors.white,
      height: 105.h,
      dateTextStyle: GoogleFonts.elMessiri(
          color: MyColors.names, fontSize: 22.sp, fontWeight: FontWeight.w500),
      monthTextStyle: GoogleFonts.elMessiri(
          color: MyColors.names, fontSize: 12.sp, fontWeight: FontWeight.w500),
      dayTextStyle: GoogleFonts.elMessiri(
          color: MyColors.myGreen,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500),
      onDateChange: (date) {
        // New date selected
        //to do give api the month and the day of the month
        // the day was represent the index of the object that we get prayer time from here
        String month = date.month.toString();
        String year = date.year.toString();
        int indexofDay = date.day - 1;
        BlocProvider.of<PrayerTimesCubit>(context).getPrayerTimes(
          month: month,
          year: year,
          indexofDay: indexofDay,
        );
        print(date.month);
        print(date.day);
        print('******************************************$date');
      },
    );
  }
}

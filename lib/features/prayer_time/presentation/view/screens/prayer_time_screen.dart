import 'dart:ffi';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/core/widgets/text_utils.dart';
import 'package:muslim_way/features/prayer_time/data/services/location_services.dart';

import '../../../../../core/app_bar_widget.dart';
import '../../../../../core/screens_background.dart';
import '../../../../../helper/location_helper.dart';
import '../../view_model/cubit/prayet_times_cubit.dart';
import '../widgets/prayer_time_widgets/my_date_picker.dart';
import '../widgets/prayer_time_widgets/prayers_time_widget.dart';

class PrayerTimeScreen extends StatefulWidget {
  const PrayerTimeScreen({super.key});

  @override
  State<PrayerTimeScreen> createState() => _PrayerTimeScreenState();
}

class _PrayerTimeScreenState extends State<PrayerTimeScreen> {
  LocationServices locationServices = LocationServices();

  @override
  void initState() {
    super.initState();
    getPrayersTimes();
  }

  getPrayersTimes() async {
    DateTime dateTime = DateTime.now();
    String month = dateTime.month.toString();
    String year = dateTime.year.toString();
    int indexofDay = dateTime.day - 1;
    BlocProvider.of<PrayerTimesCubit>(context).getPrayerTimes(
      month: month,
      year: year,
      indexofDay: indexofDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreensBackground(image: prayerBg),
            Column(
              children: [
                SizedBox(
                  height: 28.h,
                ),
                const AppBarWidget(
                  text: 'مواقيت الصلاة',
                  color: Colors.white,
                ),
                SizedBox(height: 50.h),
                const MyDatePicker(),
                SizedBox(
                  height: 40.h,
                ),
                PrayersTimeWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/features/prayer_time/data/models/prayer_times_and_location.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/widgets/text_utils.dart';
import '../../../view_model/cubit/prayet_times_cubit.dart';
import 'my_divider.dart';

class PrayersTimeWidget extends StatelessWidget {
  PrayersTimeWidget({
    super.key,
  });
  final List prayerNames = [
    'الفجر',
    'الشروق',
    'الظهر',
    'العصر',
    'المغرب',
    'العشاء',
    'الامساك'
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimesCubit, PrayerTimesState>(
        builder: (context, state) {
      if (state is PrayerTimesLoading) {
        return Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Center(
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(loadingGIF),
              ),
            ),
          ],
        );
      } else if (state is PrayerTimesLoaded) {
        PrayerTimesModel prayersTime = (state).prayerTime;
        final List listOfprayerNames = [
          prayersTime.fajr.substring(0, 6),
          prayersTime.sunrise.substring(0, 6),
          prayersTime.dhuhr.substring(0, 6),
          prayersTime.asr.substring(0, 6),
          prayersTime.maghrib.substring(0, 6),
          prayersTime.isha.substring(0, 6),
          prayersTime.imsak.substring(0, 6),
        ];
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                          text: listOfprayerNames[
                              index], // to do add prayers time from api
                          color: MyColors.names,
                          underLine: TextDecoration.none,
                        ),
                        TextUtils(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                          text: prayerNames[index],
                          color: MyColors.names,
                          underLine: TextDecoration.none,
                        ),
                      ],
                    ),
                    const MyDivider()
                  ],
                );
              },
            ),
          ),
        );
      } else {
        return const Center(
          child: Text('somthing wrong'),
        );
      }
    });
  }
}

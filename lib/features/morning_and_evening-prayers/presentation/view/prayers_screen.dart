import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/app_bar_widget.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/features/morning_and_evening-prayers/presentation/view/widgets/evening_prayers.dart';
import 'package:muslim_way/features/morning_and_evening-prayers/presentation/view/widgets/morning_prayers.dart';

import '../../../../core/screens_background.dart';

class PrayersScreen extends StatefulWidget {
  const PrayersScreen({super.key});

  @override
  State<PrayersScreen> createState() => _PrayersScreenState();
}

class _PrayersScreenState extends State<PrayersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
              SizedBox(height: 30.h),
              const AppBarWidget(
                text: 'أذكار الصباح و المساء',
                color: Colors.white,
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  children: [
                    TabBar(
                      controller: _controller,
                      tabs: const [
                        HeaderText(
                          text: 'اذكار المساء',
                        ),
                        HeaderText(
                          text: 'اذكار الصباح',
                        ),
                      ],
                      indicatorColor: MyColors.myGreen,
                      indicatorWeight: 3.sp,
                      labelPadding: EdgeInsets.only(bottom: 13.h),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    SizedBox(
                      height: 570.h,
                      child:
                          TabBarView(controller: _controller, children: const [
                        EveningPrayers(),
                        MorningPrayers(),
                      ]),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.elMessiri(
        color: MyColors.names,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

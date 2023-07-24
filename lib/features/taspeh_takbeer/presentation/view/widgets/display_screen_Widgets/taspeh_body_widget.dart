import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/display_screen_Widgets/button_to_increment_taspeh.dart';
import '../taspeh_takbeer_widgets/group_nums.dart';
import '../taspeh_takbeer_widgets/main_number_that_change_every_tap.dart';
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

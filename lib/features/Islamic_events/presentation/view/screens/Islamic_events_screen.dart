import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/core/screens_background.dart';
import 'package:muslim_way/core/app_bar_widget.dart';

import '../../../../morning_and_evening-prayers/presentation/view/prayers_screen.dart';
import '../widgets/cells_text_widget.dart';
import '../widgets/header_text_widget.dart';

class IslamicEvents extends StatelessWidget {
  const IslamicEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: /*Stack(
          children: [
            ScreensBackground(
              image: prayerBg,
            ),
            Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                const AppBarWidget(
                    text: 'الأعياد الاسلامية', color: Colors.white),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 250.h,
                          width: 200.w,
                          child: SvgPicture.asset(
                            listOfdatesImages[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      separatorBuilder: ((context, index) =>
                          SizedBox(height: 10.h)),
                      itemCount: listOfdatesImages.length),
                ),
              ],
            ),
          ],
        ),*/

            Stack(children: [
          ScreensBackground(
            image: prayerBg,
          ),
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              const AppBarWidget(
                  text: 'الأعياد الاسلامية', color: Colors.white),
              SizedBox(
                height: 75.h,
              ),
              DataTable(
                  dataRowHeight: 50.h,
                  columnSpacing: 20,
                  columns: const <DataColumn>[
                    DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: Center(
                          child: HeaderTextWidget(
                            text: 'التاريخ الميلادي',
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: HeaderTextWidget(
                          text: 'التاريخ الهجري',
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: HeaderTextWidget(
                          text: 'اليوم',
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: Center(
                          child: HeaderTextWidget(
                            text: 'الاعياد الاسلاميه',
                          ),
                        ),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      color: MaterialStateProperty.all(MyColors.tableRowColor),
                      cells: const <DataCell>[
                        DataCell(CellsTextWidget(text: '18/2/2023')),
                        DataCell(CellsTextWidget(text: '27/7/1444')),
                        DataCell(CellsTextWidget(text: 'السبت')),
                        DataCell(CellsTextWidget(text: 'الاسراء و المعراج')),
                      ],
                    ),
                    const DataRow(
                      cells: <DataCell>[
                        DataCell(CellsTextWidget(text: '7/3/2023')),
                        DataCell(CellsTextWidget(text: '15/8/1444')),
                        DataCell(CellsTextWidget(text: 'الثلاثاء')),
                        DataCell(CellsTextWidget(text: 'النصف من شعبان')),
                      ],
                    ),
                    DataRow(
                      color: MaterialStateProperty.all(MyColors.tableRowColor),
                      cells: const <DataCell>[
                        DataCell(CellsTextWidget(text: '21/3/2023')),
                        DataCell(CellsTextWidget(text: '15/8/1444')),
                        DataCell(CellsTextWidget(text: 'الثلاثاء')),
                        DataCell(CellsTextWidget(text: 'هلال رمضان')),
                      ],
                    ),
                    const DataRow(
                      cells: <DataCell>[
                        DataCell(CellsTextWidget(text: '27/6/2023')),
                        DataCell(CellsTextWidget(text: '9/12/1444')),
                        DataCell(CellsTextWidget(text: 'الثلاثاء')),
                        DataCell(CellsTextWidget(text: 'يوم عرفه')),
                      ],
                    ),
                    DataRow(
                      color: MaterialStateProperty.all(MyColors.tableRowColor),
                      cells: const <DataCell>[
                        DataCell(CellsTextWidget(text: '28/6/2023')),
                        DataCell(CellsTextWidget(text: '10/12/1444')),
                        DataCell(CellsTextWidget(text: 'الأربعاء')),
                        DataCell(CellsTextWidget(text: 'عيد الأضحى')),
                      ],
                    ),
                  ]),
            ],
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/constant.dart';

import 'package:muslim_way/core/screens_background.dart';
import 'package:muslim_way/features/Islamic_events/presentation/view/widgets/app_bar_widget.dart';

class IslamicEvents extends StatelessWidget {
  const IslamicEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          ScreensBackground(
            image: islamicevents,
          ),
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              const AppBarWidget(),
              SizedBox(
                height: 75.h,
              ),
              DataTable(columns: const <DataColumn>[
                DataColumn(
                  numeric: true,
                  label: Expanded(
                    child: Center(
                      child: HeaderText(
                        text: 'التاريخ الميلادي',
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  numeric: true,
                  label: Expanded(
                    child: HeaderText(
                      text: 'التاريخ الهجري',
                    ),
                  ),
                ),
                DataColumn(
                  numeric: true,
                  label: Expanded(
                    child: HeaderText(
                      text: 'اليوم',
                    ),
                  ),
                ),
                DataColumn(
                  numeric: true,
                  label: Expanded(
                    child: Center(
                      child: HeaderText(
                        text: 'الاعياد الاسلاميه',
                      ),
                    ),
                  ),
                ),
              ], rows: <DataRow>[
                DataRow(
                  color: MaterialStateProperty.all(MyColors.tableRowColor),
                  cells: const <DataCell>[
                    DataCell(CellsText(text: '18/2/2023')),
                    DataCell(CellsText(text: '27/7/1444')),
                    DataCell(CellsText(text: 'السبت')),
                    DataCell(CellsText(text: 'الاسراء و المعراج')),
                  ],
                ),
                const DataRow(
                  cells: <DataCell>[
                    DataCell(CellsText(text: '7/3/2023')),
                    DataCell(CellsText(text: '15/8/1444')),
                    DataCell(CellsText(text: 'الثلاثاء')),
                    DataCell(CellsText(text: 'النصف من شعبان')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.all(MyColors.tableRowColor),
                  cells: const <DataCell>[
                    DataCell(CellsText(text: '21/3/2023')),
                    DataCell(CellsText(text: '15/8/1444')),
                    DataCell(CellsText(text: 'الثلاثاء')),
                    DataCell(CellsText(text: 'هلال رمضان')),
                  ],
                ),
                const DataRow(
                  cells: <DataCell>[
                    DataCell(CellsText(text: '27/6/2023')),
                    DataCell(CellsText(text: '9/12/1444')),
                    DataCell(CellsText(text: 'الثلاثاء')),
                    DataCell(CellsText(text: 'يوم عرفه')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.all(MyColors.tableRowColor),
                  cells: const <DataCell>[
                    DataCell(CellsText(text: '28/6/2023')),
                    DataCell(CellsText(text: '10/12/1444')),
                    DataCell(CellsText(text: 'الأربعاء')),
                    DataCell(CellsText(text: 'عيد الأضحى')),
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
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class CellsText extends StatelessWidget {
  const CellsText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 11.sp,
          fontWeight: FontWeight.normal,
          height: 2),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'paryers_state.dart';

class ParyersCubit extends Cubit<ParyersState> {
  ParyersCubit() : super(ParyersInitial());

  static int morningText1 = 0;
  static int morningText2 = 0;
  static int morningText3 = 0;
  static int morningText4 = 0;
  static int morningText5 = 0;
  static int morningText6 = 0;
  static int morningText7 = 0;
  static int morningText8 = 0;
  static int morningText9 = 0;
  static int morningText10 = 0;
  static int morningText11 = 0;
  static int morningText12 = 0;
  static int morningText13 = 0;
  static int morningText14 = 0;
  static int morningText15 = 0;
  static int morningText16 = 0;
  static int morningText17 = 0;
  static int morningText18 = 0;
  static int morningText19 = 0;
  static int morningText20 = 0;
  List morningPrayersListNum = [
    morningText1,
    morningText2,
    morningText3,
    morningText4,
    morningText5,
    morningText6,
    morningText7,
    morningText8,
    morningText9,
    morningText10,
    morningText11,
    morningText12,
    morningText13,
    morningText14,
    morningText15,
    morningText16,
    morningText17,
    morningText18,
    morningText19,
    morningText20,
  ];

  changeParyerMorningNum(int index) {
    switch (index) {
      case 0:
        morningPrayersListNum[0]++;
        emit(ParyersMorning());
        break;
      case 1:
        morningPrayersListNum[1]++;
        emit(ParyersMorning());
        break;
      case 2:
        morningPrayersListNum[2]++;
        emit(ParyersMorning());
        break;
      case 3:
        morningPrayersListNum[3]++;
        emit(ParyersMorning());
        break;
      case 4:
        morningPrayersListNum[4]++;
        emit(ParyersMorning());
        break;
      case 5:
        morningPrayersListNum[5]++;
        emit(ParyersMorning());
        break;
      case 6:
        morningPrayersListNum[6]++;
        emit(ParyersMorning());
        break;
      case 7:
        morningPrayersListNum[7]++;
        emit(ParyersMorning());
        break;
      case 8:
        morningPrayersListNum[8]++;
        emit(ParyersMorning());
        break;
      case 9:
        morningPrayersListNum[9]++;
        emit(ParyersMorning());
        break;
      case 10:
        morningPrayersListNum[10]++;
        emit(ParyersMorning());
        break;
      case 11:
        morningPrayersListNum[11]++;
        emit(ParyersMorning());
        break;
      case 12:
        morningPrayersListNum[12]++;
        emit(ParyersMorning());
        break;
      case 13:
        morningPrayersListNum[13]++;
        emit(ParyersMorning());
        break;
      case 14:
        morningPrayersListNum[14]++;
        emit(ParyersMorning());
        break;
      case 15:
        morningPrayersListNum[15]++;
        emit(ParyersMorning());
        break;
      case 16:
        morningPrayersListNum[16]++;
        emit(ParyersMorning());
        break;
      case 17:
        morningPrayersListNum[17]++;
        emit(ParyersMorning());
        break;
      case 18:
        morningPrayersListNum[18]++;
        emit(ParyersMorning());
        break;
      case 19:
        morningPrayersListNum[19]++;
        emit(ParyersMorning());
        break;
      default:
    }
  }

  //-----------------------------------
  static int eveningText1 = 0;
  static int eveningText2 = 0;
  static int eveningText3 = 0;
  static int eveningText4 = 0;
  static int eveningText5 = 0;
  static int eveningText6 = 0;
  static int eveningText7 = 0;
  static int eveningText8 = 0;
  static int eveningText9 = 0;
  static int eveningText10 = 0;
  static int eveningText11 = 0;
  static int eveningText12 = 0;
  static int eveningText13 = 0;
  static int eveningText14 = 0;
  static int eveningText15 = 0;
  static int eveningText16 = 0;
  static int eveningText17 = 0;
  static int eveningText18 = 0;
  static int eveningText19 = 0;
  static int eveningText20 = 0;
  List eveningPrayersListNum = [
    eveningText1,
    eveningText2,
    eveningText3,
    eveningText4,
    eveningText5,
    eveningText6,
    eveningText7,
    eveningText8,
    eveningText9,
    eveningText10,
    eveningText11,
    eveningText12,
    eveningText13,
    eveningText14,
    eveningText15,
    eveningText16,
    eveningText17,
    eveningText18,
    eveningText19,
    eveningText20,
  ];

  changeParyerEveningNum(int index) {
    switch (index) {
      case 0:
        eveningPrayersListNum[0]++;
        emit(ParyersEvening());
        break;
      case 1:
        eveningPrayersListNum[1]++;
        emit(ParyersEvening());
        break;
      case 2:
        eveningPrayersListNum[2]++;
        emit(ParyersEvening());
        break;
      case 3:
        eveningPrayersListNum[3]++;
        emit(ParyersEvening());
        break;
      case 4:
        eveningPrayersListNum[4]++;
        emit(ParyersEvening());
        break;
      case 5:
        eveningPrayersListNum[5]++;
        emit(ParyersEvening());
        break;
      case 6:
        eveningPrayersListNum[6]++;
        emit(ParyersEvening());
        break;
      case 7:
        eveningPrayersListNum[7]++;
        emit(ParyersEvening());
        break;
      case 8:
        eveningPrayersListNum[8]++;
        emit(ParyersEvening());
        break;
      case 9:
        eveningPrayersListNum[9]++;
        emit(ParyersEvening());
        break;
      case 10:
        eveningPrayersListNum[10]++;
        emit(ParyersEvening());
        break;
      case 11:
        eveningPrayersListNum[11]++;
        emit(ParyersEvening());
        break;
      case 12:
        eveningPrayersListNum[12]++;
        emit(ParyersEvening());
        break;
      case 13:
        eveningPrayersListNum[13]++;
        emit(ParyersEvening());
        break;
      case 14:
        eveningPrayersListNum[14]++;
        emit(ParyersEvening());
        break;
      case 15:
        eveningPrayersListNum[15]++;
        emit(ParyersEvening());
        break;
      case 16:
        eveningPrayersListNum[16]++;
        emit(ParyersEvening());
        break;
      case 17:
        eveningPrayersListNum[17]++;
        emit(ParyersEvening());
        break;
      case 18:
        eveningPrayersListNum[18]++;
        emit(ParyersEvening());
        break;
      case 19:
        eveningPrayersListNum[19]++;
        emit(ParyersEvening());
        break;
      default:
    }
  }
}

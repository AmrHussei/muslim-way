import 'dart:ffi';
import 'package:get/get.dart' as get_navigation;
import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:muslim_way/core/constant.dart';

import '../../view/display_screen.dart';
part 'taspeh_takbeer_state.dart';

class TaspehTakbeerCubit extends Cubit<TaspehTakbeerState> {
  TaspehTakbeerCubit() : super(TaspehTakbeerInitial());

  int taspehNum = 0;
  int taspehGroupNum = 0;
  int totalTaspehNums = 0;
  //
  int takbeerNum = 0;
  int takbeerGroupNum = 0;
  int totalTakbeerNums = 0;
  //
  int estkhfarNum = 0;
  int estkhfarGroupNum = 0;
  int totalEstkhfarNums = 0;
  //
  int hwkalaNum = 0;
  int hwkalaGroupNum = 0;
  int totalHwkalaNums = 0;

  incrementMainNum(String incrementID) {
    switch (incrementID) {
      case MyIncrementID.taspeh:
        taspehNum++;
        emit(Taspeh());
        break;
      case MyIncrementID.takbeer:
        takbeerNum++;
        emit(Takbeer());
        break;
      case MyIncrementID.estkhfar:
        estkhfarNum++;
        emit(Estkhfar());
        break;
      case MyIncrementID.hwkala:
        hwkalaNum++;
        emit(Hwkala());
        break;
      default:
    }
  }

  incrementGroupNum(String incrementID) {
    switch (incrementID) {
      case MyIncrementID.taspeh:
        if (taspehNum > 32 && taspehNum.remainder(33) == 0) {
          taspehGroupNum++;
          emit(Taspeh());
        }

        break;
      case MyIncrementID.takbeer:
        if (takbeerNum > 32 && takbeerNum.remainder(33) == 0) {
          takbeerGroupNum++;
          emit(Takbeer());
        }

        break;
      case MyIncrementID.estkhfar:
        if (estkhfarNum > 32 && estkhfarNum.remainder(33) == 0) {
          estkhfarGroupNum++;
          emit(Estkhfar());
        }

        break;
      case MyIncrementID.hwkala:
        if (hwkalaNum > 32 && hwkalaNum.remainder(33) == 0) {
          hwkalaGroupNum++;
          emit(Hwkala());
        }

        break;
      default:
    }
  }

  incrementTotalNum(String incrementID) {
    switch (incrementID) {
      case MyIncrementID.taspeh:
        totalTaspehNums++;
        emit(Taspeh());
        break;
      case MyIncrementID.takbeer:
        totalTakbeerNums++;
        emit(Takbeer());
        break;
      case MyIncrementID.estkhfar:
        totalEstkhfarNums++;
        emit(Estkhfar());
        break;
      case MyIncrementID.hwkala:
        totalHwkalaNums++;
        emit(Hwkala());
        break;
      default:
    }
  }

  restartTotalNum(String incrementID) {
    switch (incrementID) {
      case MyIncrementID.taspeh:
        totalTaspehNums = 0;
        taspehGroupNum = 0;
        taspehNum = 0;
        emit(Taspeh());
        break;
      case MyIncrementID.takbeer:
        totalTakbeerNums = 0;
        takbeerGroupNum = 0;
        takbeerNum = 0;
        emit(Takbeer());
        break;
      case MyIncrementID.estkhfar:
        totalEstkhfarNums = 0;
        estkhfarGroupNum = 0;
        estkhfarNum = 0;
        emit(Estkhfar());
        break;
      case MyIncrementID.hwkala:
        totalHwkalaNums = 0;
        hwkalaGroupNum = 0;
        hwkalaNum = 0;
        emit(Hwkala());
        break;
      default:
    }
  }

  restartMainNum(String incrementID) {
    switch (incrementID) {
      case MyIncrementID.taspeh:
        taspehNum = 0;
        taspehGroupNum = 0;
        emit(Taspeh());
        break;
      case MyIncrementID.takbeer:
        takbeerNum = 0;
        takbeerGroupNum = 0;
        emit(Takbeer());
        break;
      case MyIncrementID.estkhfar:
        estkhfarNum = 0;
        estkhfarGroupNum = 0;
        emit(Estkhfar());
        break;
      case MyIncrementID.hwkala:
        hwkalaNum = 0;
        hwkalaGroupNum = 0;
        emit(Hwkala());
        break;
      default:
    }
  }

  navFunction(String screenID) {
    switch (screenID) {
      case MyIncrementID.taspeh:
        get_navigation.Get.to(
            const DisplayScreen(
              appBarText: 'تسبيح',
              centerText: 'سبحان الله',
              totalText: 'عدد التسبيحات السابقة',
              incrementID: MyIncrementID.taspeh,
            ),
            transition: get_navigation.Transition.zoom,
            duration: transitionDuration);
        emit(Taspeh());
        break;
      case MyIncrementID.estkhfar:
        get_navigation.Get.to(
            const DisplayScreen(
              appBarText: 'استغفار',
              centerText: 'استغفر الله العظيم',
              totalText: 'مرات الاستغفار السابقة',
              incrementID: MyIncrementID.estkhfar,
            ),
            transition: get_navigation.Transition.zoom,
            duration: transitionDuration);
        emit(Estkhfar());
        break;
      case MyIncrementID.takbeer:
        get_navigation.Get.to(
            const DisplayScreen(
              appBarText: 'تكبير',
              centerText: 'الله اكبر',
              totalText: 'عدد التكبيرات السابقة',
              incrementID: MyIncrementID.takbeer,
            ),
            transition: get_navigation.Transition.zoom,
            duration: transitionDuration);
        emit(Takbeer());
        break;
      case MyIncrementID.hwkala:
        get_navigation.Get.to(
            const DisplayScreen(
              appBarText: 'حوقله',
              centerText: 'لا حول ولا قوه الا بالله',
              totalText: 'عدد الحوقلات السابقة',
              incrementID: MyIncrementID.hwkala,
            ),
            transition: get_navigation.Transition.zoom,
            duration: transitionDuration);
        emit(Hwkala());
        break;
      default:
    }
  }
}

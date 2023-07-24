import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:muslim_way/features/prayer_time/data/repository/prayer_times_repo.dart';

import '../../../../../core/helper/location_helper.dart';
import '../../../data/models/prayer_times_and_location.dart';

part 'prayet_times_state.dart';

class PrayerTimesCubit extends Cubit<PrayerTimesState> {
  PrayerTimesCubit() : super(PrayerTimesInitial());
  final PrayersTimeRepo prayersTimeRepo = PrayersTimeRepo();

  void getPrayerTimes({
    required String month,
    required String year,
    required int indexofDay,
  }) async {
    try {
      emit(PrayerTimesLoading());
      Position positin = await LocationHelper.getCurrentLocation();
      List<PrayerTimesModel> listOfPrayersTimes =
          await prayersTimeRepo.getPrayerTimes(
        latitude: positin.latitude.toString(),
        longitude: positin.longitude.toString(),
        month: month,
        year: year,
      );
      emit(PrayerTimesLoaded(listOfPrayersTimes[indexofDay]));
      print('seucess get prayers @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@()()()()()');
    } catch (error) {
      emit(PrayerTimesError());
      print('Error get prayers @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@()()()()()');
      print(error.toString());
    }
  }
}

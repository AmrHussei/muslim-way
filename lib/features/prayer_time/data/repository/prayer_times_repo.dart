import 'package:get/get_connect/http/src/response/response.dart';
import 'package:muslim_way/features/prayer_time/data/models/prayer_times_and_location.dart';
import 'package:muslim_way/features/prayer_time/data/services/location_services.dart';

import '../../../../core/utils/constant.dart';

class PrayersTimeRepo {
  final LocationServices locationServices = LocationServices();
  Future<List<PrayerTimesModel>> getPrayerTimes(
      {required String latitude,
      required String longitude,
      required String month,
      required String year}) async {
    List responce = await locationServices.getPrayerTimes(
      latitude: latitude,
      longitude: longitude,
      month: month,
      year: year,
    );
    List<PrayerTimesModel> listOfPrayersTimes = responce
        .map((prayerTimeInDay) => PrayerTimesModel.fromJson(prayerTimeInDay))
        .toList();
    print(
        'this listOf Prayrts times ========> =========> ==========> ------> $listOfPrayersTimes');

    return listOfPrayersTimes;
  }
}

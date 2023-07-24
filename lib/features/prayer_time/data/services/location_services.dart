import 'package:dio/dio.dart';
import 'package:muslim_way/core/utils/constant.dart';

class LocationServices {
  late Dio dio;

  LocationServices() {
    BaseOptions options = BaseOptions(
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getPrayerTimes(
      {required String latitude,
      required String longitude,
      required String month,
      required String year}) async {
    try {
      Response response =
          await dio.get(ApiConstant.prayerTimeBaseURL, queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'month': month,
        'year': year,
      });

      print(
          'this is responce 000000000000000000000000000101011 ${response.data} .........');
      return response.data['data'];
    } catch (error) {
      print('error from getPrayerTimes ${error.toString()}');
      return [];
    }
  }
}

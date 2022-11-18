import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:weather/models/get_wheather_info/get_weather_info.dart';
import 'package:weather/models/one_call/one_call_data.dart';
import 'package:weather/utils/constants.dart';

class ApiProvider {
  /// Simple weather data CURRENT
  static Future<GetWeatherInfo> getCurrentWeatherByText({
    required String searchText,
  }) async {
    try {
      var queryParams = {
        "appid": API_KEY,
        "q": searchText,
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/weather", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return GetWeatherInfo.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  static Future<GetWeatherInfo> getCurrentWeatherByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var queryParams = {
        "lat": latitude.toString(),
        "lon": longitude.toString(),
        "appid": API_KEY,
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/weather", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return GetWeatherInfo.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    } finally {}
  }

  /// Daily Hourly and Current weather
  static Future<OneCallData> getOneCallByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var queryParams = {
        "lat": latitude.toString(),
        "lon": longitude.toString(),
        "appid": API_KEY,
        "units": "metric",
        "exclude": "minutely,current",
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/onecall", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return OneCallData.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    } finally {}
  }
}

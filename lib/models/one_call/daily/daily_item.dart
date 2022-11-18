import 'package:json_annotation/json_annotation.dart';
import 'package:weather/models/get_wheather_info/weather_item.dart';

import 'daily_feels_like.dart';
import 'daily_temp.dart';

part 'daily_item.g.dart';

@JsonSerializable(explicitToJson: true)
class DailyItem {
  @JsonKey(defaultValue: 0, name: 'dt')
  int dt;

  @JsonKey(defaultValue: 0, name: 'sunrise')
  int sunrise;

  @JsonKey(defaultValue: 0, name: 'sunset')
  int sunset;

  @JsonKey(defaultValue: 0, name: 'moonrise')
  int moonrise;

  @JsonKey(defaultValue: 0, name: 'moonset')
  int moonset;

  @JsonKey(defaultValue: 0.0, name: 'moon_phase')
  double moonPhase;

  @JsonKey(name: 'temp')
  DailyTemp dailyTemp;

  @JsonKey(name: 'feels_like')
  DailyFeelsLike dailyFeelsLike;

  @JsonKey(defaultValue: 0, name: 'pressure')
  int pressure;

  @JsonKey(defaultValue: 0, name: 'humidity')
  int humidity;

  @JsonKey(defaultValue: 0.0, name: 'dew_point')
  double dewPoint;

  @JsonKey(defaultValue: 0.0, name: 'wind_speed')
  double windSpeed;

  @JsonKey(defaultValue: 0, name: 'wind_deg')
  int windDeg;

  @JsonKey(defaultValue: 0.0, name: 'wind_gust')
  double windGust;

  @JsonKey(defaultValue: [], name: 'weather')
  List<WeatherItem> weather;

  @JsonKey(defaultValue: 0, name: 'clouds')
  int clouds;

  @JsonKey(defaultValue: 0.0, name: 'pop')
  double pop;

  @JsonKey(defaultValue: 0.0, name: 'uvi')
  double uvi;

  DailyItem({
    required this.dailyFeelsLike,
    required this.dailyTemp,
    required this.windSpeed,
    required this.windGust,
    required this.windDeg,
    required this.uvi,
    required this.dewPoint,
    required this.pop,
    required this.humidity,
    required this.clouds,
    required this.pressure,
    required this.dt,
    required this.weather,
    required this.sunset,
    required this.sunrise,
    required this.moonPhase,
    required this.moonrise,
    required this.moonset,
  });

  factory DailyItem.fromJson(Map<String, dynamic> json) =>
      _$DailyItemFromJson(json);

  Map<String, dynamic> toJson() => _$DailyItemToJson(this);

  @override
  String toString() {
    return '''
     dt: $dt,
     sunrise: $sunrise
     sunset: $sunset
     moonrise: $moonrise
     moonset: $moonset
     dailyTemp: ${dailyTemp.toString()}
     dailyFeelsLike: ${dailyFeelsLike.toString()}
     pressure: $pressure
     humidity: $humidity
     dewPoint: $dewPoint
     windSpeed: $windSpeed
     windDeg: $windDeg
     windGust: $windGust
     weather: ${weather.toString()}
     clouds: $clouds
     pop: $pop
     uvi: $uvi
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyItem _$HourlyItemFromJson(Map<String, dynamic> json) => HourlyItem(
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      visibility: json['visibility'] as int? ?? 0,
      dt: json['dt'] as int? ?? 0,
      clouds: json['clouds'] as int? ?? 0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0.0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0.0,
      dewPoint: (json['dew_point'] as num?)?.toDouble() ?? 0.0,
      uvi: (json['uvi'] as num?)?.toDouble() ?? 0.0,
      windDeg: json['wind_deg'] as int? ?? 0,
      windGust: (json['wind_gust'] as num?)?.toDouble() ?? 0.0,
      windSpeed: (json['wind_speed'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$HourlyItemToJson(HourlyItem instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'pop': instance.pop,
    };

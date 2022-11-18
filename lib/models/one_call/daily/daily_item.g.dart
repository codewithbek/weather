// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyItem _$DailyItemFromJson(Map<String, dynamic> json) => DailyItem(
      dailyFeelsLike:
          DailyFeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      dailyTemp: DailyTemp.fromJson(json['temp'] as Map<String, dynamic>),
      windSpeed: (json['wind_speed'] as num?)?.toDouble() ?? 0.0,
      windGust: (json['wind_gust'] as num?)?.toDouble() ?? 0.0,
      windDeg: json['wind_deg'] as int? ?? 0,
      uvi: (json['uvi'] as num?)?.toDouble() ?? 0.0,
      dewPoint: (json['dew_point'] as num?)?.toDouble() ?? 0.0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0.0,
      humidity: json['humidity'] as int? ?? 0,
      clouds: json['clouds'] as int? ?? 0,
      pressure: json['pressure'] as int? ?? 0,
      dt: json['dt'] as int? ?? 0,
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      sunset: json['sunset'] as int? ?? 0,
      sunrise: json['sunrise'] as int? ?? 0,
      moonPhase: (json['moon_phase'] as num?)?.toDouble() ?? 0.0,
      moonrise: json['moonrise'] as int? ?? 0,
      moonset: json['moonset'] as int? ?? 0,
    );

Map<String, dynamic> _$DailyItemToJson(DailyItem instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'temp': instance.dailyTemp.toJson(),
      'feels_like': instance.dailyFeelsLike.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
    };

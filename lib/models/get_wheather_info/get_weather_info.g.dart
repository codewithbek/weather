// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_weather_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWeatherInfo _$GetWeatherInfoFromJson(Map<String, dynamic> json) =>
    GetWeatherInfo(
      cod: json['cod'] as int? ?? 0,
      sysItem: SysItem.fromJson(json['sys'] as Map<String, dynamic>),
      coordItem: CoordItem.fromJson(json['coord'] as Map<String, dynamic>),
      mainItem: MainItem.fromJson(json['main'] as Map<String, dynamic>),
      windItem: WindItem.fromJson(json['wind'] as Map<String, dynamic>),
      cloudsItem: CloudsItem.fromJson(json['clouds'] as Map<String, dynamic>),
      weatherItems: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      visibility: json['visibility'] as int? ?? 0,
      base: json['base'] as String? ?? '',
      name: json['name'] as String? ?? '',
      timezone: json['timezone'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      dt: json['dt'] as int? ?? 0,
    );

Map<String, dynamic> _$GetWeatherInfoToJson(GetWeatherInfo instance) =>
    <String, dynamic>{
      'visibility': instance.visibility,
      'name': instance.name,
      'dt': instance.dt,
      'base': instance.base,
      'timezone': instance.timezone,
      'id': instance.id,
      'cod': instance.cod,
      'coord': instance.coordItem,
      'main': instance.mainItem,
      'wind': instance.windItem,
      'clouds': instance.cloudsItem,
      'sys': instance.sysItem,
      'weather': instance.weatherItems,
    };

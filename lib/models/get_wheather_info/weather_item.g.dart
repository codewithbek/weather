// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherItem _$WeatherItemFromJson(Map<String, dynamic> json) => WeatherItem(
      id: json['id'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      main: json['main'] as String? ?? '',
    );

Map<String, dynamic> _$WeatherItemToJson(WeatherItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

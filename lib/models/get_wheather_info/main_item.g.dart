// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainItem _$MainItemFromJson(Map<String, dynamic> json) => MainItem(
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
      pressure: (json['pressure'] as num?)?.toDouble() ?? 0.0,
      humidity: (json['humidity'] as num?)?.toDouble() ?? 0.0,
      tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0.0,
      tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0.0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$MainItemToJson(MainItem instance) => <String, dynamic>{
      'temp': instance.temp,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
    };

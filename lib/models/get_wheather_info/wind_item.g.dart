// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindItem _$WindItemFromJson(Map<String, dynamic> json) => WindItem(
      deg: json['deg'] as int? ?? 0,
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$WindItemToJson(WindItem instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };

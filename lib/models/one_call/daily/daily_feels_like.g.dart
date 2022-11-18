// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_feels_like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyFeelsLike _$DailyFeelsLikeFromJson(Map<String, dynamic> json) =>
    DailyFeelsLike(
      day: (json['day'] as num?)?.toDouble() ?? 0.0,
      eve: (json['eve'] as num?)?.toDouble() ?? 0.0,
      morn: (json['morn'] as num?)?.toDouble() ?? 0.0,
      night: (json['night'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$DailyFeelsLikeToJson(DailyFeelsLike instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

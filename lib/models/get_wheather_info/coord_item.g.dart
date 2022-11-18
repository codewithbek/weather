// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordItem _$CoordItemFromJson(Map<String, dynamic> json) => CoordItem(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CoordItemToJson(CoordItem instance) => <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

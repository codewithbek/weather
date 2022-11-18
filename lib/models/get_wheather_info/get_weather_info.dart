import 'package:json_annotation/json_annotation.dart';

import 'clouds_item.dart';
import 'coord_item.dart';
import 'main_item.dart';
import 'sys_item.dart';
import 'weather_item.dart';
import 'wind_item.dart';

part 'get_weather_info.g.dart';

@JsonSerializable()
class GetWeatherInfo {
  @JsonKey(defaultValue: 0, name: 'visibility')
  int visibility;

  @JsonKey(defaultValue: '', name: 'name')
  String name;

  @JsonKey(defaultValue: 0, name: 'dt')
  int dt;

  @JsonKey(defaultValue: '', name: 'base')
  String base;

  @JsonKey(defaultValue: 0, name: 'timezone')
  int timezone;

  @JsonKey(defaultValue: 0, name: 'id')
  int id;

  @JsonKey(defaultValue: 0, name: 'cod')
  int cod;

  @JsonKey(name: 'coord')
  CoordItem coordItem;

  @JsonKey(name: 'main')
  MainItem mainItem;

  @JsonKey(name: 'wind')
  WindItem windItem;

  @JsonKey(name: 'clouds')
  CloudsItem cloudsItem;

  @JsonKey(name: 'sys')
  SysItem sysItem;

  @JsonKey(defaultValue: [], name: 'weather')
  List<WeatherItem> weatherItems;

  GetWeatherInfo({
    required this.cod,
    required this.sysItem,
    required this.coordItem,
    required this.mainItem,
    required this.windItem,
    required this.cloudsItem,
    required this.weatherItems,
    required this.visibility,
    required this.base,
    required this.name,
    required this.timezone,
    required this.id,
    required this.dt,
  });

  factory GetWeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$GetWeatherInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GetWeatherInfoToJson(this);

  @override
  String toString() => '''
      id:$id,
      mainItem:${mainItem.feelsLike},
      coordItem:${coordItem.lon},
      windItem:${windItem.speed},
      sysItem:${sysItem.country},
      weatherItem:${weatherItems.toString()},
      cloudsItem:${cloudsItem.all},
      dt:$dt,
      cod:$cod,
      name:$name,
      timezone:$timezone,
      base:$base,
      visibility:$visibility,
      
  ''';
}
//ishladimi? ha data keldi
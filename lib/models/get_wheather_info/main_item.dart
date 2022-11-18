import 'package:json_annotation/json_annotation.dart';

part 'main_item.g.dart';

@JsonSerializable(explicitToJson: true)
class MainItem{
  MainItem({
    required this.temp,
    required this.pressure,
    required this.humidity,
    required this.tempMax,
    required this.tempMin,
    required this.feelsLike,

  });

  @JsonKey(defaultValue: 0.0, name: 'temp')
  double temp;

  @JsonKey(defaultValue: 0.0, name: 'temp_max')
  double tempMax;

  @JsonKey(defaultValue: 0.0, name: 'pressure')
  double pressure;

  @JsonKey(defaultValue: 0.0, name: 'humidity')
  double humidity;

  @JsonKey(defaultValue: 0.0, name: 'feels_like')
  double feelsLike;

  @JsonKey(defaultValue: 0.0, name: 'temp_min')
  double tempMin;



  factory MainItem.fromJson(Map<String, dynamic>json)=>
      _$MainItemFromJson(json);

  Map<String, dynamic> toJson() => _$MainItemToJson(this);


}
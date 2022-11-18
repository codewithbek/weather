import 'package:json_annotation/json_annotation.dart';

part 'sys_item.g.dart';

@JsonSerializable(explicitToJson: true)
class SysItem{
  SysItem({
    required this.type,
    required this.id,
    required this.sunset,
    required this.sunrise,
    required this.country
  });

  @JsonKey(defaultValue: 0, name: 'type')
  int type;

  @JsonKey(defaultValue: '', name: 'country')
  String country;

  @JsonKey(defaultValue: 0, name: 'id')
  int id;

  @JsonKey(defaultValue: 0, name: 'sunrise')
  int sunrise;

  @JsonKey(defaultValue: 0, name: 'sunset')
  int sunset;

  factory SysItem.fromJson(Map<String, dynamic>json)=>
      _$SysItemFromJson(json);

  Map<String, dynamic> toJson() => _$SysItemToJson(this);


}
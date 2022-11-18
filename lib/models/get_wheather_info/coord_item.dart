import 'package:json_annotation/json_annotation.dart';

part 'coord_item.g.dart';

@JsonSerializable(explicitToJson: true)
class CoordItem {
  @JsonKey(defaultValue: 0.0, name: 'lon')
  double lon;

  @JsonKey(defaultValue: 0.0, name: 'lat')
  double lat;

  CoordItem({
    required this.lat,
    required this.lon,
  });

  factory CoordItem.fromJson(Map<String, dynamic> json) =>
      _$CoordItemFromJson(json);

  Map<String, dynamic> toJson() => _$CoordItemToJson(this);
}

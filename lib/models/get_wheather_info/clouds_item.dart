import 'package:json_annotation/json_annotation.dart';

part 'clouds_item.g.dart';

@JsonSerializable(explicitToJson: true)
class CloudsItem {
  @JsonKey(defaultValue: 0, name: 'all')
  int all;

  CloudsItem({
    required this.all,
  });

  factory CloudsItem.fromJson(Map<String, dynamic> json) =>
      _$CloudsItemFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsItemToJson(this);
}

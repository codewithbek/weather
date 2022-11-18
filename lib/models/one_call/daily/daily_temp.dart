import 'package:json_annotation/json_annotation.dart';

part 'daily_temp.g.dart';

// "day": 30.29,
// "min": 23.09,
// "max": 30.29,
// "night": 24.53,
// "eve": 29.06,
// "morn": 23.26

@JsonSerializable(explicitToJson: true)
class DailyTemp {
  @JsonKey(defaultValue: 0.0, name: 'day')
  double day;

  @JsonKey(defaultValue: 0.0, name: 'min')
  double min;

  @JsonKey(defaultValue: 0.0, name: 'max')
  double max;

  @JsonKey(defaultValue: 0.0, name: 'night')
  double night;

  @JsonKey(defaultValue: 0.0, name: 'eve')
  double eve;

  @JsonKey(defaultValue: 0.0, name: 'morn')
  double morn;

  DailyTemp({
    required this.day,
    required this.min,
    required this.max,
    required this.eve,
    required this.morn,
    required this.night,
  });

  factory DailyTemp.fromJson(Map<String, dynamic> json) =>
      _$DailyTempFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTempToJson(this);

  @override
  String toString() {
    return '''
     day: $day,
     min: $min
     max: $max
     eve: $eve
     morn: $morn
    ''';
  }
}
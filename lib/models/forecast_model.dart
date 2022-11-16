import 'package:weather/utils/icons.dart';

class ForecastModel {
  final String hour;
  final String iconImage;
  final String gradus;
  ForecastModel({
    required this.hour,
    required this.iconImage,
    required this.gradus,
  });
  static List<ForecastModel> hourlyForecasts = [
    ForecastModel(hour: "00:00", iconImage: MyIcons.fastWind, gradus: "20°"),
    ForecastModel(hour: "01:00", iconImage: MyIcons.midRain, gradus: "19°"),
    ForecastModel(hour: "02:00", iconImage: MyIcons.cloudRain, gradus: "18°"),
    ForecastModel(hour: "03:00", iconImage: MyIcons.sunRain, gradus: "21°"),
    ForecastModel(hour: "04:00", iconImage: MyIcons.tornado, gradus: "17°"),
    ForecastModel(hour: "05:00", iconImage: MyIcons.cloudRain, gradus: "19°"),
    ForecastModel(hour: "06:00", iconImage: MyIcons.sunRain, gradus: "22°"),
    ForecastModel(hour: "07:00", iconImage: MyIcons.midRain, gradus: "21°"),
    ForecastModel(hour: "08:00", iconImage: MyIcons.fastWind, gradus: "19°"),
    ForecastModel(hour: "09:00", iconImage: MyIcons.cloudRain, gradus: "21°"),
    ForecastModel(hour: "10:00", iconImage: MyIcons.midRain, gradus: "20°"),
    ForecastModel(hour: "11:00", iconImage: MyIcons.fastWind, gradus: "18°"),
    ForecastModel(hour: "MON", iconImage: MyIcons.fastWind, gradus: "20°"),
    ForecastModel(hour: "TUE", iconImage: MyIcons.midRain, gradus: "19°"),
    ForecastModel(hour: "WENS", iconImage: MyIcons.cloudRain, gradus: "18°"),
    ForecastModel(hour: "THU", iconImage: MyIcons.sunRain, gradus: "21°"),
    ForecastModel(hour: "FRI", iconImage: MyIcons.tornado, gradus: "17°"),
    ForecastModel(hour: "SAT", iconImage: MyIcons.cloudRain, gradus: "19°"),
    ForecastModel(hour: "SUN", iconImage: MyIcons.sunRain, gradus: "22°"),
  ];
}

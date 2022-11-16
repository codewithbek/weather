import 'package:weather/utils/icons.dart';

class SearchCountryModel {
  final String country;
  final String iconImage;
  final String gradus;
  final String weatherStatus;
  final String temp;
  SearchCountryModel({
    required this.country,
    required this.iconImage,
    required this.gradus,
    required this.weatherStatus,
    required this.temp,
  });

  static List<SearchCountryModel> countriesInfo = [
    SearchCountryModel(
        country: "Tashkent, Uzbekistan",
        iconImage: MyIcons.midRain,
        gradus: "17°",
        weatherStatus: "Showers",
        temp: "H:21°  L:-19°"),
    SearchCountryModel(
        country: "Toronto, Canada",
        iconImage: MyIcons.fastWind,
        gradus: "20°",
        weatherStatus: "Fast Wind",
        temp: "H:16°  L:-8°"),
    SearchCountryModel(
        country: "Tennessee, United States",
        iconImage: MyIcons.tornado,
        gradus: "23°",
        weatherStatus: "Tornado",
        temp: "H:26°  L:16°"),
    SearchCountryModel(
        country: "Montreal, Canada",
        iconImage: MyIcons.cloudRain,
        gradus: "20°",
        weatherStatus: "Partly Cloudy",
        temp: "H:24°  L:18°°"),
  ];
}

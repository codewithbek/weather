import 'package:flutter/material.dart';

import 'package:weather/models/forecast_model.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';

import 'package:weather/screens/home/widgets/background.dart';
import 'package:weather/screens/home/widgets/bottom_info.dart';
import 'package:weather/widgets/custom_bnb.dart';
import 'package:weather/screens/home/widgets/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<ForecastModel> forecast = ForecastModel.hourlyForecasts;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundWidget(),
          const WeatherView(),
          BottomInfoWidget(forecast: forecast),
          CustomBottomNavBar(size: size),
        ],
      ),
    );
  }
}

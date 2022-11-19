import 'package:flutter/material.dart';

import 'package:weather/models/forecast_model.dart';
import 'package:weather/screens/search/widgets/check_height.dart';
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
    double _height = 400;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              top: CheckHeigth.isHeight == false ? 0 : -1000,
              left: 0,
              right: 0,
              duration: const Duration(milliseconds: 400),
              child: const BackgroundWidget()),
          const WeatherView(),
          AnimatedPositioned(
              bottom: 0,
              duration: const Duration(seconds: 1),
              child: BottomInfoWidget(
                  ontap: (detail) {
                    CheckHeigth.isHeight = !CheckHeigth.isHeight;
                    setState(() {});
                  },
                  height: _height,
                  forecast: forecast)),
          CustomBottomNavBar(size: size),
        ],
      ),
    );
  }
}

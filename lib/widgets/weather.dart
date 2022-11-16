import 'package:flutter/material.dart';
import 'package:weather/utils/colors.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 140,
      child: Column(
        children: [
          const Text(
            "Montreal",
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: MyColors.white),
          ),
          const Text("19°",
              style: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.w200,
                color: MyColors.white,
              )),
          Text(
            "Mostly Clear",
            style: TextStyle(
                fontSize: 24,
                color: MyColors.brightGray.withOpacity(0.6),
                fontWeight: FontWeight.w600),
          ),
          const Text(
            "H:24°  L:18°",
            style: TextStyle(
                fontSize: 24,
                color: MyColors.white,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather/screens/search/widgets/custom_painter.dart';
import 'package:weather/utils/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.temp,
    required this.country,
    required this.statusWeather,
    required this.color1,
    required this.color2,
    required this.gradus,
    required this.iconImage,
  }) : super(key: key);

  final double height;
  final double width;
  final String temp;
  final String country;
  final String statusWeather;
  final Color color1;
  final Color color2;
  final String gradus;
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.22,
      width: width * 0.97,
      padding: const EdgeInsets.only(top: 15),
      child: Stack(
        children: [
          CustomPaint(
            painter: WeatherCustomPainter(color1: color1, color2: color2),
            size: Size(width * 0.95, height * 0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gradus,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 64),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      temp,
                      style: TextStyle(
                          fontSize: 20,
                          color: MyColors.brightGray.withOpacity(0.6),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      country,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iconImage,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    child: Text(
                      statusWeather,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

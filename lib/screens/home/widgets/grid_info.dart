import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';

class GridInfoWidget extends StatelessWidget {
  const GridInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 10, right: 10),
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "UV INDEX",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "4\nModerate",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Container(
                height: 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [
                      MyColors.C_1C1B33,
                      MyColors.C_C427FB,
                      MyColors.C_C159EC
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "SUNRISE",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "5:28 AM",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Text(
                "Sunset: 7:25PM",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "VISIBILITY",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "8 km",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 34),
              ),
              Text(
                "Similar to the actual\ntemperature.",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "RAINFALL",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "1.8 mm\nin last hour",
                maxLines: 2,
                style: TextStyle(
                  color: MyColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Text(
                "1.2 mm expected in\nnext 24h.",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "FEELS LIKE",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "19°",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 34),
              ),
              Text(
                "Similar to the actual\ntemperature.",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border:
                Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                MyColors.C_11F1D47.withOpacity(0.6),
                MyColors.C_2E335A.withOpacity(0.6)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.4, 0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "HUMIDITY",
                style: TextStyle(
                    color: MyColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                "90%",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 34),
              ),
              Text(
                "The dew point is 17\nright now.",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

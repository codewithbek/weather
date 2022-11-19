import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';

class AirQualityWidget extends StatelessWidget {
  const AirQualityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
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
            "AIR QUALITY",
            style: TextStyle(
                color: MyColors.white.withOpacity(0.5),
                fontWeight: FontWeight.w600,
                fontSize: 13),
          ),
          Text(
            "3-Low Health Risk",
            style: TextStyle(
                color: MyColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          Container(
            height: 4,
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
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: MyColors.C_38383A)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "See more",
                style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              SvgPicture.asset(MyIcons.arrowRight)
            ],
          ),
        ],
      ),
    );
  }
}

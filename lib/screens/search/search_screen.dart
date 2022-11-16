import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/models/country_model.dart';
import 'package:weather/screens/home/home_screen.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';

import 'widgets/custom_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<SearchCountryModel> country = SearchCountryModel.countriesInfo;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: SvgPicture.asset(MyIcons.arrowBack)),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(MyIcons.rightIcon))
        ],
        backgroundColor: MyColors.C_2E335A,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColors.C_2E335A,
              MyColors.C_1C1B33,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.9],
          ),
        ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          itemCount: country.length,
          itemBuilder: (context, index) {
            return CustomContainer(
              height: height,
              width: width,
              temp: country[index].temp,
              country: country[index].country,
              iconImage: country[index].iconImage,
              statusWeather: country[index].weatherStatus,
              gradus: country[index].gradus,
              color1: MyColors.C_5936B4,
              color2: MyColors.C_362A84,
            );
          },
        ),
      ),
    );
  }
}

import 'dart:ui';

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
  final controller = TextEditingController();
  final List<SearchCountryModel> country = SearchCountryModel.countriesInfo;
  String query = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
        child: Stack(children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
          const SizedBox(
            height: 20,
          ),
          _appBar(),
        ]),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(130),
      child: Stack(children: [
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                gradient: const LinearGradient(
                  colors: [
                    MyColors.C_2E335A,
                    MyColors.C_1C1B33,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [1.9, 2.9],
                ),
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              },
                              icon: SvgPicture.asset(MyIcons.arrowBack)),
                          const Padding(
                            padding: EdgeInsets.only(right: 220),
                            child: Text(
                              "Weather",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(MyIcons.rightIcon))
                        ],
                      ),
                      Container(
                        height: 45,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: controller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: MyColors.brightGray.withOpacity(0.6),
                            ),
                            fillColor: MyColors.C_2E335A.withOpacity(0.6),
                            filled: true,
                            hintText: "Search for a city or airport",
                            hintStyle: TextStyle(
                              color: MyColors.brightGray.withOpacity(0.6),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: MyColors.white.withOpacity(0.2)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: MyColors.white.withOpacity(0.2)),
                            ),
                          ),
                          onChanged: searchCountry,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void searchCountry(String query) {
    final suggestions = country.where((element) {
      final countryName = country[0].country.toLowerCase();
      final input = query.toLowerCase();
      return countryName.contains(input);
    }).toList();
    setState(() => country[0] = suggestions[0]);
  }
}

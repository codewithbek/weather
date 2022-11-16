import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/screens/home_screen.dart';
import 'package:weather/utils/icons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
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
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: SvgPicture.asset(MyIcons.arrowBack)),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(MyIcons.rightIcon))
        ],
      ),
    );
  }
}

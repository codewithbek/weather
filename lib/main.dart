import 'package:flutter/material.dart';
import 'package:weather/screens/home/home_screen.dart';
import 'package:weather/screens/home/widgets/grid_info.dart';
import 'package:weather/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: MyColors.C_2E335A),
      home: const HomeScreen(),
    );
  }
}

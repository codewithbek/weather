import 'package:flutter/material.dart';
import 'package:weather/utils/icons.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          MyIcons.backgroundImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF2E335A).withOpacity(0.4),
                  const Color(0xFF1C1B33).withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 0.9],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 170,
          child: Image.asset(MyIcons.home),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather/utils/icons.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1.99,
      child: Stack(
        children: [
          Image.asset(
            MyIcons.backgroundImage,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width * 1.99,
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
              top: 0,
              bottom: -120,
              left: 0,
              right: 0,
              child: Image.asset(
                MyIcons.home,
              ))
        ],
      ),
    );
  }
}

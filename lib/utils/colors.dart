import 'package:flutter/material.dart';

class MyColors {
  // primary
  static const white = Colors.white;
  static const black = Colors.black;

  static const C_3C3C43 = Color.fromARGB(255, 144, 144, 235);
  static const C_EBEBF5 = Color(0xFFEBEBF5);
  static const Color brightGray = Color(0xFFF5F5EB);

  // solid
  static const C_48319D = Color(0xFF48319D);

  static const C_1F1D47 = Color(0xFF1F1D47);
  static const C_C427FB = Color(0xFFC427FB);
  static const C_E0D9FF = Color(0xFFE0D9FF);
  static const C_38103FCF = Color(0xFF38103FCF);
  static const C_5936B4 = Color(0xFF5936B4);
  static const C_362A84 = Color(0xFF362A84);
  static const C_2E335A = Color(0xFF2E335A);
  static const C_1C1B33 = Color(0xFF1C1B33);
  // angular
  static const C_612FAB = Color(0xFF612FAB);

  // linear gradiant

  static const linearOne = [
    Color(0xFF2E335A),
    Color(0xFF1C1B33),
  ];

  static const linearTwo = [
    Color(0xFF5936B4),
    Color(0xFF362A84),
  ];

  static const linearThree = [
    Color(0xFF3658B1),
    Color(0xFFC159EC),
  ];

  static const linearFour = [
    Color(0xFFAEC9FF),
    Color(0xFF083072),
  ];
// radial gradient
  static const radialBar = [
    Color(0xFFF7CBFD),
    Color(0xFF7758D1),
  ];
}

class XColorDark {
  static const Color black = Color(0xFF000000);
  static const Color arsenic = Color(0xFF43433C);
  static Color secondary = arsenic.withOpacity(.6);
  static Color tertiary = arsenic.withOpacity(.3);
  static Color quaternary = arsenic.withOpacity(.18);
}

class XColorLight {
  static const Color white = Color(0xFFFFFFFF);
  static const Color charcoal = Color(0xFF43433C);
  static Color secondary = charcoal.withOpacity(.6);
  static Color tertiary = charcoal.withOpacity(.3);
  static Color quaternary = charcoal.withOpacity(.18);
}

class XWeatherColor {
  static const Color blueMagentaViolet = Color(0xFF48319d);
  static const Color yankeesBlue = Color(0xFF1F1D47);
  static const Color vividMulberry = Color(0xFFC427FB);
  static const Color paleLavender = Color(0xFFE0D9FF);
  static const Color grape = Color(0xFF612FAB);

  // gradient
  static List<Color> linear1 = [
    const Color(0xFF2E335A).withOpacity(.7),
    const Color(0xFF1C1B33).withOpacity(.7),
  ];

  static const List<Color> linear2 = [
    Color(0xFF5936B4),
    Color(0xFF362A84),
  ];

  static const List<Color> linear3 = [
    Color(0xFF3658B1),
    Color(0xFFC159EC),
  ];

  static const List<Color> linear4 = [
    Color(0xFFAEC9FF),
    Color(0xFFAEC9FF),
    Color(0xFF083072),
  ];

  static const List<Color> radial = [
    Color(0xFFF7CBFD),
    Color(0xFF7758D1),
  ];
}

class XGradient {
  static LinearGradient linear1 = LinearGradient(
    colors: XWeatherColor.linear1,
    stops: const [
      0.0,
      1.0,
    ],
  );

  static const LinearGradient linear2 = LinearGradient(
    colors: XWeatherColor.linear2,
    stops: [
      0.0,
      1.0,
    ],
  );

  static const LinearGradient linear3 = LinearGradient(
    colors: XWeatherColor.linear3,
    stops: [
      0.0,
      1.0,
    ],
  );

  static const LinearGradient linear4 = LinearGradient(
    colors: XWeatherColor.linear4,
    stops: [
      0.0,
      0.55,
      0.55,
    ],
  );

  static const RadialGradient radial = RadialGradient(
    colors: XWeatherColor.radial,
    stops: [
      0.0,
      0.55,
      0.55,
    ],
  );

  static RadialGradient angular = RadialGradient(
    colors: [
      XWeatherColor.grape.withOpacity(0.0),
      XWeatherColor.grape.withOpacity(1.0),
      XWeatherColor.grape.withOpacity(0.0),
      XWeatherColor.grape.withOpacity(1.0),
    ],
    stops: const [
      0.14,
      0.36,
      0.63,
      0.75,
    ],
  );
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/models/forecast_model.dart';
import 'package:weather/screens/home/widgets/air_quality.dart';
import 'package:weather/screens/home/widgets/grid_info.dart';
import 'package:weather/screens/search/widgets/check_height.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';
import 'dart:math' as math;
import 'package:scroll_to_index/scroll_to_index.dart';

class BottomInfoWidget extends StatefulWidget {
  double height;
  final void Function(TapUpDetails)? ontap;
  BottomInfoWidget(
      {Key? key,
      required this.ontap,
      required this.forecast,
      required this.height})
      : super(key: key);

  final List<ForecastModel> forecast;

  @override
  State<BottomInfoWidget> createState() => _BottomInfoWidgetState();
}

class _BottomInfoWidgetState extends State<BottomInfoWidget> {
  static const maxCount = 19;
  static const double maxHeight = 1000;
  final random = math.Random();
  final scrollDirection = Axis.horizontal;

  late AutoScrollController controller;
  late List<List<int>> randomList;
  double _height = 400;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.left),
        axis: scrollDirection);
    randomList = List.generate(maxCount,
        (index) => <int>[index, (maxHeight * random.nextDouble()).toInt()]);
  }

  @override
  Widget build(BuildContext context) {
    _height = CheckHeigth.isHeight ? 680 : 335;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
        child: GestureDetector(
          onTapUp: widget.ontap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColors.white.withOpacity(0.6),
              borderRadius: CheckHeigth.isHeight
                  ? null
                  : const BorderRadius.vertical(top: Radius.circular(50)),
              gradient: LinearGradient(
                colors: [
                  MyColors.C_C427FB.withOpacity(0.26),
                  const Color(0xFF2E335A).withOpacity(0.26),
                  const Color(0xFF1C1B33).withOpacity(0.26),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // stops: [0.4, 0.5, 0.9],
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  top: 10,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
                        child: Container(
                          height: 5,
                          width: 60,
                          // margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: MyColors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ),
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        getForecastButton(),
                        const CustomLineWidget(),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: ListView(
                            scrollDirection: scrollDirection,
                            controller: controller,
                            physics: const BouncingScrollPhysics(),
                            children: List.generate(
                              ForecastModel.hourlyForecasts.length,
                              (index) => _getRow(
                                  index: index,
                                  selectedColor: MyColors.C_48319D,
                                  unSelectedColor:
                                      MyColors.C_48319D.withOpacity(0.2),
                                  otherDt: widget.forecast[index].hour,
                                  firstDt: widget.forecast[0].hour),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const AirQualityWidget(),
                        const GridInfoWidget()
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row getForecastButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            setState(() => counter = 0);
            _scrollToCounter();
          },
          child: Text(
            "Hourly Forecast",
            style: TextStyle(
                color: MyColors.C_EBEBF5.withOpacity(0.6),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() => counter = maxCount - 1);
            _scrollToCounter();
          },
          child: Text(
            "Weekly Forecast",
            style: TextStyle(
                color: MyColors.C_EBEBF5.withOpacity(0.6),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  int counter = -1;

  Future _scrollToCounter() async {
    await controller.scrollToIndex(counter,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(counter);
  }

  Widget _getRow(
      {required int index,
      required Color selectedColor,
      required Color unSelectedColor,
      required String firstDt,
      required String otherDt}) {
    return _wrapScrollTag(
        index: index,
        child: Container(
          margin: const EdgeInsets.only(
            left: 12,
          ),
          width: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: firstDt == otherDt ? selectedColor : unSelectedColor)
              ],
              color: MyColors.white.withOpacity(0.2),
              border:
                  Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
              gradient: LinearGradient(
                colors: [
                  MyColors.C_48319D.withOpacity(0.2),
                  MyColors.white.withOpacity(0.2),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.5, 0.9],
              ),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              firstDt == otherDt
                  ? const Text(
                      "Now",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: MyColors.white),
                    )
                  : Text(
                      widget.forecast[index].hour,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: MyColors.white),
                    ),
              Image.asset(
                widget.forecast[index].iconImage,
                width: 32,
                height: 32,
              ),
              Text(
                widget.forecast[index].gradus,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: MyColors.white),
              )
            ],
          ),
        ));
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );
}

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.white.withOpacity(0.2), width: 1),
          gradient: LinearGradient(
            colors: [
              MyColors.C_48319D.withOpacity(0.2),
              MyColors.white.withOpacity(0.2),
            ],
            begin: Alignment.center,
            end: Alignment.topLeft,
            // stops: [0.4, 0.9],
          ),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}

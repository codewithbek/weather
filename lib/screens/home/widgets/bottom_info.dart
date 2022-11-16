import 'package:flutter/material.dart';
import 'package:weather/models/forecast_model.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';
import 'dart:math' as math;
import 'package:scroll_to_index/scroll_to_index.dart';

class BottomInfoWidget extends StatefulWidget {
  const BottomInfoWidget({
    Key? key,
    required this.forecast,
  }) : super(key: key);

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
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        height: MediaQuery.of(context).size.height / 2.7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44.0),
          image: const DecorationImage(
              image: AssetImage(MyIcons.modal), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 48,
                decoration: BoxDecoration(
                    color: MyColors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
              ),
              getForecastButton(),
              const CustomLineWidget(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: scrollDirection,
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    ForecastModel.hourlyForecasts.length,
                    (index) => _getRow(
                        index: index,
                        selectedColor: MyColors.C_48319D,
                        unSelectedColor: MyColors.C_48319D.withOpacity(0.2),
                        otherDt: widget.forecast[index].hour,
                        firstDt: widget.forecast[0].hour),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
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
          height: 146,
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/screens/search/search_screen.dart';
import 'package:weather/screens/search/widgets/check_height.dart';
import 'package:weather/utils/colors.dart';
import 'package:weather/utils/icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 400),
        bottom: CheckHeigth.isHeight == false ? 0 : -100,
        left: 0,
        child: SizedBox(
          width: size.width,
          height: 94,
          child: Stack(
            children: [
              SizedBox(
                  height: double.infinity,
                  child: Image.asset(
                    MyIcons.bottomBar,
                  )),
              Center(child: Image.asset(MyIcons.subtract)),
              Center(
                // heightFactor: 0.6,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  backgroundColor: MyColors.white,
                  child: SvgPicture.asset(
                    MyIcons.plus,
                    color: MyColors.C_48319D,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()));
                      },
                      icon: SvgPicture.asset(
                        MyIcons.location,
                        width: 44,
                        height: 44,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        MyIcons.menu,
                        width: 44,
                        height: 44,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';
import 'package:imense_task/view/menu/alert/alert.dart';
import 'package:imense_task/view/menu/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _bottomNavIndex = 0;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;

  final iconList = <String>[
    IconsConstants.home,
    IconsConstants.add,
    IconsConstants.observation,
    IconsConstants.report,
  ];
  final List _pages = <Widget>[
    const HomePage(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: _pages[_bottomNavIndex],
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff1488CC),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AlertPage();
            }));
          },
          child: appIcon(IconsConstants.add, false, context, 20, 20,
              color: Colors.white),
          //params
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        safeAreaValues: const SafeAreaValues(bottom: true),
        itemCount: iconList.length,
        tabBuilder: (index, isActive) {
          final color =
              (isActive) ? const Color(0xff1488CC) : const Color(0xffA4A4A4);

          return (index != 1)
              ? SizedBox(
                  height: 80,
                  width: 100,
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (index == 0)
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          if (index != 0 && index != 3 && index != 1)
                            const SizedBox(
                              width: 40,
                            ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: (isActive)
                                      ? const Color(0xffE9F1F5)
                                      : const Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: isActive
                                        ? appIcon(iconList[index], false,
                                            context, 20, 20,
                                            color: color)
                                        : appIcon(
                                            iconList[index],
                                            false,
                                            context,
                                            20,
                                            20,
                                          )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox();
        },
        // icons: iconList,
        shadow: Shadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 10.0,
        ),
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,

        onTap: (index) {
          if (index == 1) {
            return;
          }
          setState(() {
            _bottomNavIndex = index;
          });
        },
        //other params
      ),
    );
  }
}

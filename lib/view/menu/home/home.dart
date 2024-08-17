import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';
import 'package:imense_task/services/data.dart';
import 'package:imense_task/view/menu/home/chart.dart';
import 'package:imense_task/view/menu/home/widgets/appbar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:imense_task/view/menu/home/widgets/bottom_sheet.dart';
import 'package:imense_task/view/menu/home/widgets/chart_items.dart';
import 'package:imense_task/view/menu/home/widgets/observation_item.dart';
import 'package:imense_task/view/menu/home/widgets/status_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  List<String> observationList = [
    'Daily',
    'Safety',
    'Excellent',
    'Work clothes, E.P.I',
    'Bad condition',
  ];

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(18, 2);
    final barGroup2 = makeGroupData(19, 3.5);
    final barGroup3 = makeGroupData(20, 2);
    final barGroup4 = makeGroupData(21, 6);
    final barGroup5 = makeGroupData(22, 0.8);
    final barGroup6 = makeGroupData(23, 2);
    final barGroup7 = makeGroupData(24, 3.5);
    final barGroup8 = makeGroupData(25, 6);
    final barGroup9 = makeGroupData(26, 2);
    final barGroup10 = makeGroupData(27, 0.8);
    final barGroup11 = makeGroupData(28, 4);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9,
      barGroup10,
      barGroup11,
    ];

    rawBarGroups = items;
    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: appBar(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: status.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return statusItem(status[index], context);
                  },
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 35,
                child: Center(
                  child: ListView.builder(
                    itemCount: observationList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return observationItem(observationList[index], context);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 1,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SizedBox(
                          height: 47,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My observations',
                                    style: TextStyle(
                                      color: Color(0xFF313131),
                                      fontSize: 15,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Statistics',
                                    style: TextStyle(
                                      color: Color(0xFFA3A3A3),
                                      fontSize: 11,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                
                                   showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return bottomSheetWidget(context);
                        },
                      );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      appIcon(IconsConstants.menu, false, context,
                                          14, 3,
                                          color: const Color(0xffA3A3A3)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 6,
                              minY: 0,
                              groupsSpace: 10,
                              barTouchData: BarTouchData(
                                enabled: false,
                              ),
                              titlesData: const FlTitlesData(
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                    reservedSize: 28,
                                    interval: 1,
                                  ),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                    reservedSize: 28,
                                    interval: 1,
                                  ),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                    reservedSize: 28,
                                    interval: 1,
                                  ),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 28,
                                    interval: 1,
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              barGroups: showingBarGroups,
                              gridData: const FlGridData(show: false),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ChartWidget(status: status),
              )
            ],
          ),
        ),
      ),
    );
  }
}

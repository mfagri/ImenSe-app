// ignore_for_file: must_be_immutable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';
import 'package:imense_task/models/status_model.dart';
import 'package:imense_task/view/menu/home/widgets/row_item.dart';

class ChartWidget extends StatefulWidget {
  List<Status> status;
  ChartWidget({super.key, required this.status});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 217,
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
                        'Progress',
                        style: TextStyle(
                          color: Color(0xFF313131),
                          fontSize: 15,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Today',
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
                      //add logic
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          appIcon(IconsConstants.menu, false, context, 14, 3,
                              color: const Color(0xffA3A3A3)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
                width: 140,
                child: PieChart(
                  PieChartData(
                    sections: List.generate(
                      4,
                      (i) {
                        return PieChartSectionData(
                          color: [
                            const Color(0xff616161),
                            const Color(0xff47CA5B),
                            const Color(0xffFDC841),
                            const Color(0xff42A4DF),
                          ][i],
                          showTitle: false,
                          value: i * 20 + 5,
                          radius: 25,
                          badgeWidget: (selectedIndex == i)
                              ? SizedBox(
                                  height: 80,
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = i;
                                          });
                                        },
                                        child: SizedBox(
                                          height: 41,
                                          width: 41,
                                          child: Stack(
                                            children: [
                                              const Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: Icon(
                                                  Icons
                                                      .location_history_rounded,
                                                  color: Color(0xff616161),
                                                  size: 41,
                                                ),
                                              ),
                                              const Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: Padding(
                                                  padding: EdgeInsets.all(1),
                                                  child: Icon(
                                                    Icons
                                                        .location_history_rounded,
                                                    color: Colors.white,
                                                    size: 39,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2),
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                        top: 2,
                                                      ),
                                                      height: 26,
                                                      width: 26,
                                                      color: Colors.white,
                                                      child: Center(
                                                        child: Text(
                                                          widget
                                                              .status[i].value,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xff616161),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Nunito',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = i;
                                    });
                                  },
                                ),
                        );
                      },
                    ),
                    centerSpaceRadius: 40,
                    sectionsSpace: 2,
                    borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                            color: const Color(0xffE0E0E0), width: 1)),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rowItem('Pending', const Color(0xff42A4DF)),
                  rowItem('Progress', const Color(0xffFDC841)),
                  rowItem('Resolved', const Color(0xff47CA5B)), //
                  rowItem('Close', const Color(0xff616161)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

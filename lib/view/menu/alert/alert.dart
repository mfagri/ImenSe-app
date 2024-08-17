import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';
import 'package:imense_task/view/menu/alert/widgets/drop_down.dart';
import 'package:imense_task/view/menu/alert/widgets/input_widget.dart';
import 'package:imense_task/view/menu/alert/widgets/level_item.dart';
import 'package:imense_task/view/menu/alert/widgets/send_button.dart';
import 'package:imense_task/view/menu/alert/widgets/switch_item.dart';
import 'package:imense_task/view/menu/alert/widgets/time_dropdown.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  ScrollController scrollController = ScrollController();
  List<int> numbers = List<int>.generate(13, (int index) => index - 2);
  int selectedLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Container(
          height: 100,
          color: const Color(0xffE3E3E3),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'Manual alert',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          appIcon(IconsConstants.back, false, context, 15, 15))
                ],
              ),
            ),
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width,
      ),
      body: Center(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              InputWidget(
                title: 'Site',
                hint: 'Site 001',
                ishavefavIcon: true,
              ),
              const SizedBox(
                height: 22,
              ),
              InputWidget(
                title: 'Zone 001',
                hint: 'Zone 001',
                ishavefavIcon: true,
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            scrollController.animateTo(
                                scrollController.position.minScrollExtent,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: appIcon(IconsConstants.arrowback, false,
                              context, 15, 10)),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: numbers.length,
                          itemBuilder: (context, index) {
                            return Center(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedLevel = numbers[index];
                                  });
                                },
                                child: LevelItem(
                                  number: numbers[index],
                                  isSelected: numbers[index] == selectedLevel,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            scrollController.animateTo(
                                scrollController.position.maxScrollExtent,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: appIcon(
                              IconsConstants.arrow, false, context, 15, 10)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              //location
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Color(0xFF131212),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    locationItem(),
                    const SizedBox(
                      height: 23,
                    ),
                    const InputDropdown(),
                    const SizedBox(
                      height: 23,
                    ),
                    positionItem(),
                    const TimeWidget(),
                    const SizedBox(
                      height: 23,
                    ),
                    const SendButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';

class InputDropdown extends StatefulWidget {
  const InputDropdown({super.key});

  @override
  State<InputDropdown> createState() => _InputDropdownState();
}

class _InputDropdownState extends State<InputDropdown> {
  TextEditingController controller = TextEditingController();
  bool focus = false;
  String selectedItem = '';
  FocusNode inputNode = FocusNode();
  List<String> items = [
    'Room 1.02',
    'Room 1.03',
    'Room 1.04',
    'Room 1.05',
    'Room 1.06',
  ];
// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Room',
                style: TextStyle(
                  color: Color(0xFF131212),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {
                  openKeyboard();
                },
                child: const Text(
                  '+ add',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF568DDF),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: TextField(
                      onSubmitted: (value) {
                        setState(() {
                          items.add(value);
                          selectedItem = value;
                          controller.clear();
                        });
                      },
                      controller: controller,
                      autofocus: focus,
                      focusNode: inputNode,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: selectedItem,
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),

                        suffixIcon: SizedBox(
                          width: 100,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                PopupMenuButton<String>(
                                  color: Colors.white,
                                  initialValue: selectedItem,
                                  onSelected: (String item) {
                                    setState(() {
                                      selectedItem = item;
                                    });
                                  },
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width,
                                  ),
                                  icon: SizedBox(
                                    width: 70,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        appIcon(IconsConstants.down, false,
                                            context, 8, 6),
                                      ],
                                    ),
                                  ),
                                  itemBuilder: (BuildContext context) {
                                    return items.map((String item) {
                                      return PopupMenuItem<String>(
                                          value: item,
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ));
                                    }).toList();
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        // Suggested code may be subject to a license. Learn more: ~LicenseLog:1236320629.
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: const BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1,
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
    );
  }
}

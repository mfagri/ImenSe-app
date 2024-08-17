import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({
    super.key,
  });

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  String time = '60 Minutes';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: DropdownMenu(
        menuStyle: const MenuStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color(0xffFFFFFF),
          ),
        ),
        trailingIcon: SizedBox(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              appIcon(IconsConstants.down, false, context, 8, 6),
            ],
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          constraints: const BoxConstraints(
            minHeight: 40,
            maxHeight: 40,
            minWidth: double.infinity,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffC4C4C4),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        width: MediaQuery.of(context).size.width - 48,
        hintText: time,
        initialSelection: time,
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        onSelected: (String? item) {
          setState(() {
            time = item!;
          });
        },
        dropdownMenuEntries: [
          for (int i = 5; i <= 60; i += 5)
            DropdownMenuEntry(value: '$i Minutes', label: '$i Minutes'),
        ],
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';

class InputWidget extends StatefulWidget {
  String title;
  String hint;
  bool ishavefavIcon;
  InputWidget(
      {super.key,
      required this.title,
      required this.hint,
      required this.ishavefavIcon});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xFF131212),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              appIcon(IconsConstants.info, false, context, 14, 15)
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 40,
            child: TextField(
              readOnly: true, //can be changed to false
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: SizedBox(
                    height: 20,
                    width: 50,
                    child: Row(
                      children: [
                        if (widget.ishavefavIcon)
                          InkWell(
                              onTap: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              child: appIcon(IconsConstants.favorite, false,
                                  context, 16, 12,
                                  color: isObscure
                                      ? const Color(0xFFFFCE31)
                                      : const Color(0xFFE5E5E5))),
                        const Spacer(),
                        appIcon(
                          IconsConstants.down,
                          false,
                          context,
                          8,
                          11,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide: const BorderSide(
                    color: Color(0xFFC4C4C4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide: const BorderSide(
                    color: Color(0xFFC4C4C4),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';

Center observationItem(String title, BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 30,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF717171),
                    fontSize: 11,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0.25,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                appIcon(IconsConstants.close, false, context, 7, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
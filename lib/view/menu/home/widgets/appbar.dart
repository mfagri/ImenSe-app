 import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/image_constants.dart';
import 'package:imense_task/helpers/utils.dart';

AppBar appBar(BuildContext context) {
    return AppBar(
      leadingWidth: MediaQuery.of(context).size.width,
      backgroundColor: Colors.white,
      elevation: 0.5,
      shadowColor: const Color(0xff313131).withOpacity(0.5),
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'Overview',
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                appIcon(IconsConstants.notification, false, context, 20, 15,
                    color: const Color(0xffDDDDDD)),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff1488CC),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(ImageConstants.profile),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
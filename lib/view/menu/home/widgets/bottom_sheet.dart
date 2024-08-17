import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/helpers/utils.dart';

Container bottomSheetWidget(BuildContext context) {
    return Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.3,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: appIcon(
                                                IconsConstants.close,
                                                false,
                                                context,
                                                15,
                                                15,
                                                color: Colors.black),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            'Filter by',
                                            style: TextStyle(
                                              color: Color(0xFF313131),
                                              fontSize: 18,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w700,
                                              height: 0.09,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            'Clear',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF1488CC),
                                              fontSize: 18,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w600,
                                              height: 0.09,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    buttomshettItem(context,
                                        IconsConstants.monthly, 'Date'),
                                    buttomshettItem(
                                        context, IconsConstants.type, 'Type'),
                                    buttomshettItem(context,
                                        IconsConstants.priority, 'Status'),
                                    buttomshettItem(context,
                                        IconsConstants.category, 'Category'),
                                    buttomshettItem(
                                        context,
                                        IconsConstants.subcategory,
                                        'Subcategory'),
                                    buttomshettItem(
                                        context, IconsConstants.tag, 'Tags'),
                                  ],
                                ),
                              );
  }

  Padding buttomshettItem(BuildContext context, String icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 21, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              appIcon(
                icon,
                false,
                context,
                25,
                25,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFABABAB),
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
            ],
          ),
          appIcon(IconsConstants.arrow, false, context, 20, 20,
              color: const Color(0xffABABAB)),
        ],
      ),
    );
  }
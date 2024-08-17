import 'package:flutter/material.dart';

Row rowItem(
    String title,
    Color color,
  ) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF313131),
            fontSize: 13,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
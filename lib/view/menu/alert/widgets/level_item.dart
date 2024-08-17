import 'package:flutter/material.dart';

class LevelItem extends StatefulWidget {
  final int number;
  final bool isSelected;
  const LevelItem({super.key, required this.number, required this.isSelected});

  @override
  State<LevelItem> createState() => _LevelItemState();
}

class _LevelItemState extends State<LevelItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: !widget.isSelected
            ? const Color(0xffFFFFFF)
            : const Color(0xff5F4BA3),
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: !widget.isSelected
              ? const Color(0xffE0E0E0)
              : const Color(0xff422B8F),
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          widget.number.toString(),
          style: TextStyle(
            color: !widget.isSelected ? const Color(0xFF313131) : Colors.white,
            fontSize: 13,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

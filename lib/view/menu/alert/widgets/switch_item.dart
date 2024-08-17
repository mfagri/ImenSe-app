import 'package:flutter/material.dart';

Container locationItem() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xff5F4BA3),
                borderRadius: BorderRadius.circular(1),
                border: Border.all(
                  color: const Color(0xff422B8F),
                  width: 1,
                ),
              ),
              // color: const Color(0xffE3E3E3),

              child: const Center(
                child: Text(
                  'Room',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40,
              // color: const Color(0xffE3E3E3),
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(1),
                border: Border.all(
                  color: const Color(0xffC4C4C4),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  'Equipment',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column positionItem() {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Position',
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
          height: 6,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff5F4BA3),
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(
                      color: const Color(0xff422B8F),
                      width: 1,
                    ),
                  ),
                  // color: const Color(0xffE3E3E3),

                  child: const Center(
                    child: Text(
                      'Inside',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  // color: const Color(0xffE3E3E3),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(
                      color: const Color(0xffC4C4C4),
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Outside',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        const Column(
          children: [
            Row(
              children: [
                Text(
                  'Time expected to complete the job',
                  style: TextStyle(
                    color: Color(0xFF131212),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
          ],
        )
      ],
    );
  }
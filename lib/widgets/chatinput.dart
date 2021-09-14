import 'package:flutter/material.dart';
import 'package:lat4/theme.dart';

Widget chatInput(context) {
  return Container(
    width: MediaQuery.of(context).size.width - (2 * 30),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: whitecolor,
      borderRadius: BorderRadius.circular(75),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Type message ...',
          style: subtitleTextStyle,
        ),
        Image.asset(
          'assets/images/btn_send.png',
          width: 35,
        ),
      ],
    ),
  );
}

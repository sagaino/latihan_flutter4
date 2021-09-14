import 'package:flutter/material.dart';
import 'package:lat4/theme.dart';

Widget header(context) {
  return Container(
    width: double.infinity,
    height: 115,
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
        color: whitecolor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/grup1.png',
          height: 55,
          width: 55,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jakarta Fair',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '14,209 members',
              style: subtitleTextStyle,
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: greencolor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.call),
            iconSize: 20,
            color: whitecolor,
          ),
        ),
      ],
    ),
  );
}

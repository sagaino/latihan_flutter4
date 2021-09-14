import 'package:flutter/material.dart';
import 'package:lat4/theme.dart';

class ChartTile extends StatelessWidget {
  final String imageurl;
  final String name;
  final String text;
  final String time;
  final bool unread;
  ChartTile(
      {required this.imageurl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            imageurl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackcolor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}

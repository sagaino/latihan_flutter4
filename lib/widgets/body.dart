import 'package:flutter/material.dart';
import 'package:lat4/theme.dart';

Widget receiverBubble({
  required String imageUrl,
  required String text,
  required String time,
}) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 30,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          imageUrl,
          width: 40,
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: lightgreycolor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: sms,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                time,
                style: sms,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget senderBubble({
  required String imageUrl,
  required String text,
  required String time,
}) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: sms,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                time,
                style: sms,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Image.asset(
          imageUrl,
          width: 40,
        ),
      ],
    ),
  );
}

Widget body() {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          receiverBubble(
            imageUrl: 'assets/images/friend1.png',
            text: 'How are ya guys?',
            time: '2:30',
          ),
          receiverBubble(
            imageUrl: 'assets/images/friend3.png',
            text: 'Find here :P',
            time: '3:11',
          ),
          senderBubble(
            imageUrl: 'assets/images/profile.png',
            text: 'Thinking about how to deal\nwith this client from hell...',
            time: '22:08',
          ),
          receiverBubble(
            imageUrl: 'assets/images/friend2.png',
            text: 'Love them',
            time: '23:11',
          ),
        ],
      ),
    ),
  );
}

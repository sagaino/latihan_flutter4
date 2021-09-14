import 'package:flutter/material.dart';
import 'package:lat4/widgets/body.dart';
import 'package:lat4/widgets/chatinput.dart';
import 'package:lat4/widgets/header.dart';
import 'package:lat4/theme.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatInput(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        children: [
          header(context),
          body(),
        ],
      )),
    );
  }
}

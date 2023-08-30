import 'dart:math';
import 'package:flutter/material.dart';

import 'custom_shape.dart';

class ReceivedMessageScreen extends StatefulWidget {
  final String message;

  const ReceivedMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  State<ReceivedMessageScreen> createState() => _ReceivedMessageScreenState();
}

class _ReceivedMessageScreenState extends State<ReceivedMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup(widget.message), // Pass the message here
        ],
      ),
    );
  }
}

Widget messageTextGroup(String message) {
  return Flexible(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(("assets/images/person1.jpg")),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.white ),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ],
    ),
  );
}

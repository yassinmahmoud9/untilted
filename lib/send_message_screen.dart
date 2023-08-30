import 'package:flutter/material.dart';
import 'custom_shape.dart';

class SentMessageScreen extends StatefulWidget {
  final String message;

  const SentMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  State<SentMessageScreen> createState() => _SentMessageScreenState();
}

class _SentMessageScreenState extends State<SentMessageScreen> {
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
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.white ),
              borderRadius: BorderRadius.all(
                  Radius.circular(18)
              ),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        CustomPaint(painter: CustomShape(Color(0xfe51a1a))),
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(("assets/images/person2.jpg")),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

class typingBox extends StatefulWidget {
  const typingBox({super.key});

  @override
  State<typingBox> createState() => _typingBoxState();
}

class _typingBoxState extends State<typingBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.start,

     children: [
       Container(
    color: Colors.red,
    child: TextField(
    decoration: const InputDecoration(
    contentPadding: EdgeInsets.all(12),
    hintText: 'Type a Massege',
    ),


       ),
       )

     ],
    );
  }
}

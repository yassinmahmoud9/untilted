import 'package:chat/received_message_screen.dart';
import 'package:chat/send_message_screen.dart';
import 'package:flutter/material.dart';

import 'TypingBox.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: Container(margin: EdgeInsets.all(5), child: Text("Person")),
        leading: Row(
          children: [
            Container(
              child: Icon(Icons.arrow_back, size: 24),
            ),
            Container(
              width: 30,
              height: 30,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person.jpg"),
              ),
            )
          ],
        ),
        actions: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.video_call),
                Icon(Icons.call),
                Icon(Icons.more_vert),
              ],
            ),
          )
        ],
      ),
      body: Stack(fit: StackFit.expand, children:
      [
        Image.asset("assets/images/background.png",fit: BoxFit.cover,),
        Column(
          children: [
            Container(
              child: ListView(
                children: [
                  ReceivedMessageScreen(message: "This is my first message"),
                  SentMessageScreen(message: "This is my second message"),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

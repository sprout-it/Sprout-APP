import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Column(
        children: [
          Container(
            child: Text('Test'),
            height: 50,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            child: Text('Test'),
            height: 50,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          Divider(
            height: 10,
            thickness: 3,
          ),
          Container(
            child: Text('Test'),
            height: 50,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}

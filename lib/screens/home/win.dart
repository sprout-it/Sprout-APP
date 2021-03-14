import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  @override
  _WinState createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Win"),
      ),
      body: Center(
        child: Text("Win"),
      ),
    );
  }
}

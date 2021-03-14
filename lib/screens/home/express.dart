import 'package:flutter/material.dart';

class Express extends StatefulWidget {
  @override
  _ExpressState createState() => _ExpressState();
}

class _ExpressState extends State<Express> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Express"),
      ),
      body: Center(
        child: Text("Express"),
      ),
    );
  }
}

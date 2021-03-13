import 'package:flutter/material.dart';

class Ship extends StatefulWidget {
  @override
  _ShipState createState() => _ShipState();
}

class _ShipState extends State<Ship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ship"),
      ),
    );
  }
}
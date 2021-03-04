import 'package:flutter/material.dart';
import 'search.dart';
import 'scanner.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: Row(
              children: <Widget>[
                Scanner(),
                Search(),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: Row(
              children: [
                Text("ใช้ wallet"),
                Text("0 wallet")
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: Row(
             children: [
                Text("Grid menu"),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: Row(
              children: [
                Text("Grid โฆษณา"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



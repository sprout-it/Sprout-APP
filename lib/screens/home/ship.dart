import 'package:flutter/material.dart';

class Ship extends StatefulWidget {
  @override
  _ShipState createState() => _ShipState();
}

class _ShipState extends State<Ship> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/ship.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Ship")
            ],
          ),
        ),
        onTap: () {
          print("Ship");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
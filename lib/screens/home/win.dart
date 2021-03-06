import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  @override
  _WinState createState() => _WinState();
}

class _WinState extends State<Win> {
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
                'assets/images/bike2.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Win")
            ],
          ),
        ),
        onTap: () {
          print("Win");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
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
                'assets/images/other.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Other")
            ],
          ),
        ),
        onTap: () {
          print("Other");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
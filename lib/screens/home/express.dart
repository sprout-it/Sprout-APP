import 'package:flutter/material.dart';

class Express extends StatefulWidget {
  @override
  _ExpressState createState() => _ExpressState();
}

class _ExpressState extends State<Express> {
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
                'assets/images/express.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Express")
            ],
          ),
        ),
        onTap: () {
          print("Express");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
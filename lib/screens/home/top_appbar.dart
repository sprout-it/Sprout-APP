import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget {
  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Text(
                "Sprout",
                style: TextStyle(
                  color: Colors.greenAccent[700],
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.black54,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

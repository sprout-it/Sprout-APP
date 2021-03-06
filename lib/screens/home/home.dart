import 'package:flutter/material.dart';
import 'search.dart';
import 'scanner.dart';
import 'express.dart';
import 'food.dart';
import 'partner.dart';
import 'win.dart';
import 'use_wallet.dart';
import 'wallet_point.dart';
import 'shop.dart';
import 'ship.dart';
import 'service.dart';
import 'other.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.greenAccent[400],
            child: Row(
              children: <Widget>[
                Scanner(),
                Search(),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                UseWallet(),
                WalletPoint(),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Food(),
                Express(),
                Win(),
                Partner(),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Ship(),
                Shop(),
                Service(),
                Other(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Text("พื้นที่ข่าวสาร"),
          ),
        ],
      ),
    );
  }
}

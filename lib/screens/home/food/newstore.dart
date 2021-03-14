import 'dart:ui';
import 'package:flutter/material.dart';

class NewStore extends StatefulWidget {
  @override
  _NewStoreState createState() => _NewStoreState();
}

class _NewStoreState extends State<NewStore> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 300,
      child: Column(
        children: <Widget>[
          Container(
            height: 20,
            margin: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "ร้านอาหารใหม่",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  child: Image.asset('assets/images/mcdonald.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/kfc.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/pizzacompany.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/pizzahut.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/mk.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/sizzler.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/burgerking.png'),
                ),
                Container(
                  width: 100,
                  child: Image.asset('assets/images/yayoi.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

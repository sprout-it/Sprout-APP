import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
                'assets/images/shop.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Shop")
            ],
          ),
        ),
        onTap: () {
          print("Shop");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AdvertMenu {
  String color;

  AdvertMenu(this.color);
}

class Advertising extends StatefulWidget {
  @override
  _AdvertisingState createState() => _AdvertisingState();
}

class _AdvertisingState extends State<Advertising> {

List<AdvertMenu> menu = [
    AdvertMenu('red'),
    AdvertMenu('orange'),
    AdvertMenu('yellow'),
    AdvertMenu('green'),
    AdvertMenu('blue'),
    AdvertMenu('purple'),
    AdvertMenu('pink'),
    AdvertMenu('white'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: menu.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          // AdvertMenu advert = menu[index];
          return InkWell(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 30,
              color: Colors.red,
            ),
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}
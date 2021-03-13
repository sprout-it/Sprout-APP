import 'package:flutter/material.dart';

class AdvertMenu {
  String img;

  AdvertMenu(this.img);
}

class Advertising extends StatefulWidget {
  @override
  _AdvertisingState createState() => _AdvertisingState();
}

class _AdvertisingState extends State<Advertising> {
  List<AdvertMenu> menu = [
    AdvertMenu('assets/images/discount20.png'),
    AdvertMenu('assets/images/free_shipping.png'),
    AdvertMenu('assets/images/monitor.jpg'),
    AdvertMenu('assets/images/checkhand.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: menu.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          AdvertMenu advert = menu[index];
          return InkWell(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 30,
              child: Image.asset(
                advert.img,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              print("advertising");
            },
          );
        },
      ),
    );
  }
}

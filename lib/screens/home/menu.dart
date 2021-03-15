import 'package:flutter/material.dart';
import 'shop.dart';
import 'ship.dart';
import 'service.dart';
import 'other.dart';
import 'express.dart';
import 'food/foodcourt.dart';
import 'partner.dart';
import 'win.dart';

class HomeMenu {
  String nameMenu;
  String img;
  dynamic page;
  HomeMenu(this.nameMenu, this.img, this.page);
}

class GridMenu extends StatefulWidget {
  @override
  _GridMenuState createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  List<HomeMenu> menu = [
    HomeMenu('Food', 'assets/images/food.png', FoodCourt()),
    HomeMenu('Express', 'assets/images/express.png', Express()),
    HomeMenu('Win', 'assets/images/bike2.png', Win()),
    HomeMenu('Partner', 'assets/images/partner.png', Partner()),
    HomeMenu('Ship', 'assets/images/ship.png', Ship()),
    HomeMenu('Shop', 'assets/images/shop.png', Shop()),
    HomeMenu('Service', 'assets/images/service.png', Service()),
    HomeMenu('Other', 'assets/images/other.png', Other()),
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
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          HomeMenu home = menu[index];
          return InkWell(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 17, 0, 10),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    home.img,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                  Text(home.nameMenu)
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home.page),
              );
            },
          );
        },
      ),
    );
  }
}

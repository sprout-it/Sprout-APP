import 'package:flutter/material.dart';

class GridMenu extends StatefulWidget {
  @override
  _GridMenuState createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  List<HomeMenu> menu = [
    HomeMenu('Food', 'assets/images/food.png'),
    HomeMenu('Express', 'assets/images/express.png'),
    HomeMenu('Win', 'assets/images/bike2.png'),
    HomeMenu('Partner', 'assets/images/partner.png'),
    HomeMenu('Ship', 'assets/images/ship.png'),
    HomeMenu('Shop', 'assets/images/shop.png'),
    HomeMenu('Service', 'assets/images/service.png'),
    HomeMenu('Other', 'assets/images/other.png'),
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
            crossAxisCount: 4),
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
              print(home.nameMenu);
              
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Account()),
              // );
            },
          );
        },
      ),
    );
  }
}

class HomeMenu {
  String nameMenu;
  String img;

  HomeMenu(this.nameMenu, this.img);
}

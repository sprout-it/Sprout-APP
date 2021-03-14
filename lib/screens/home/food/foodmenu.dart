import 'package:flutter/material.dart';

class HomeMenu {
  String nameMenu;
  String img;

  HomeMenu(this.nameMenu, this.img);
}

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  List<HomeMenu> menu = [
    HomeMenu('โปรโมชั่น', 'assets/images/promotion.png'),
    HomeMenu('อาหารตามสั่ง', 'assets/images/made.png'),
    HomeMenu('อาหารทานเล่น', 'assets/images/appetizer.png'),
    HomeMenu('สตรีทฟู๊ต', 'assets/images/street.png'),
    HomeMenu('ฟาสต์ฟู๊ด', 'assets/images/fastfood.png'),
    HomeMenu('อาหารฮาลาล', 'assets/images/halal.png'),
    HomeMenu('อาหารเส้น', 'assets/images/noodle.png'),
    HomeMenu('ร้านทั้งหมด', 'assets/images/allfood.png'),
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
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => home.page),
            //   );
            // },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'search.dart';
import 'scanner.dart';
import '../account/account.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 0, 10),
                    color: Colors.grey[300],
                    child: Scanner(),
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 25, 10),
                    color: Colors.white,
                    child: Search(),
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Expanded(
                    child: Text('ใช้ Wallet'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    child: Text('0 Wallet'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/food.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Food")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/bike2.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Win")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/partner.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Partner")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ship.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Ship")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/service.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Service")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                InkWell(
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/other.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text("Other")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            height: 50,
            color: Colors.white,
            child: Text("พื้นที่โฆษณาและอื่น ๆ"),
          ),
        ],
      ),
    );
  }
}

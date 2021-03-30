import 'package:flutter/material.dart';
import 'screens/auth/login.dart';
import 'screens/home/home.dart';
import 'screens/ordered/ordered.dart';
import 'screens/payment/payment.dart';
import 'screens/message/message.dart';
import 'screens/account/account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

/// This is the stateful widget that the main application instantiates.

class RoutePage extends StatefulWidget {
  RoutePage({Key key}) : super(key: key);

  @override
  _RoutePageState createState() => _RoutePageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _RoutePageState extends State<RoutePage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Ordered(),
    Payment(),
    Message(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  User user;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    User _user = _firebaseAuth.currentUser;
    setState(() {
      user = _user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return user != null
        ? Scaffold(
            appBar: AppBar(
              title: Text('Home Screen'),
              actions: [
                IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      _firebaseAuth.signOut();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Main()));
                    })
              ],
            ),
            body: SafeArea(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long_outlined),
                  label: 'Ordered',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.payment),
                  label: 'Payment',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.sms_outlined),
                  label: 'Message',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Account',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.greenAccent[700],
              onTap: _onItemTapped,
            ),
          )
        : Scaffold(
            body: LoginPage(),
          );
  }
}

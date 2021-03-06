import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/ordered/ordered.dart';
import 'screens/payment/payment.dart';
import 'screens/message/message.dart';
import 'screens/account/account.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: RoutePageWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class RoutePageWidget extends StatefulWidget {
  RoutePageWidget({Key key}) : super(key: key);

  @override
  _RoutePageWidgetState createState() => _RoutePageWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _RoutePageWidgetState extends State<RoutePageWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        selectedItemColor: Colors.green[400],
        onTap: _onItemTapped,
      ),
    );
  }
}

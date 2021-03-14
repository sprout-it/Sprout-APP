import 'package:flutter/material.dart';

class Ordered extends StatefulWidget {
  @override
  _OrderedState createState() => _OrderedState();
}

class _OrderedState extends State<Ordered> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Order', style: TextStyle(fontSize: 30)),
            bottom: TabBar(
              tabs: [
                Text(
                  'List',
                  style: TextStyle(fontSize: 25),
                ),
                Text('Ordered', style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  Container(
                    child: Text('Super Teen Kai'),
                    height: 50,
                    color: Colors.grey.shade300,
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Container(
                    child: Text('ส่งของ'),
                    height: 50,
                    color: Colors.grey.shade300,
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Container(
                    height: 50,
                    child: Text('ส่งของ'),
                    color: Colors.grey.shade300,
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                ],
              ),
              Text('ส่งของ'),
            ],
          ),
        ),
      ),
    );
  }
}

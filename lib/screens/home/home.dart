import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'search.dart';
import 'top_appbar.dart';
import 'menu.dart';
import 'advertising.dart';
import 'branner.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: Column(
          children: <Widget>[
            TopAppBar(),
            Search(),
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        BrannerSlide(),
        GridMenu(),
        Advertising(),
      ]),
    );
  }
}

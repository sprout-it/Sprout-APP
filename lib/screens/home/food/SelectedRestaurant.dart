import 'package:flutter/material.dart';

class SelectedRestaurant extends StatefulWidget {
  @override
  _StateSelectedRestarant createState() => _StateSelectedRestarant();
}

class _StateSelectedRestarant extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Name'),
      ),
      body: Text('hello'),
    );
  }
}

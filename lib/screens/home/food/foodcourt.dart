import 'package:flutter/material.dart';
import 'package:sprout/screens/home/food/newstore.dart';
import 'foodsearch.dart';
import 'foodbranner.dart';
import 'foodmenu.dart';
import 'newstore.dart';

class FoodCourt extends StatefulWidget {
  @override
  _FoodCourtState createState() => _FoodCourtState();
}

class _FoodCourtState extends State<FoodCourt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text("ที่อยู่ปัจจุบัน"),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Map),
            // );
          },
        ),
      ),
      body: ListView(
        children: [
          FoodSearch(),
          FoodBrannerSlide(),
          FoodMenu(),
          NewStore(),
        ],
      ),
    );
  }
}

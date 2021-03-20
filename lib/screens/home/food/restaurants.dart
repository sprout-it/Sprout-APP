import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  void initState(){
    super.initState();
    getRestaurants();
  }
  Future <void> getRestaurants() async{
    var url = "http://localhost/restaurants";
    var response = await http.get(url);
    print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("รายชื่อร้านอาหารทั้งหมด"),);
  }
}

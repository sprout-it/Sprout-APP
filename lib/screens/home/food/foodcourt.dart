import 'package:flutter/material.dart';
// import 'package:sprout/screens/home/food/newstore.dart';
import 'foodsearch.dart';
import 'foodbranner.dart';
import 'foodmenu.dart';
// import 'newstore.dart';
import 'restaurants.dart';
import 'googleMapsSelect.dart';
import 'package:sprout/screens/home/food/googleMapsSelect.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlacePicker(
                    apiKey: env['GOOGLE_MAPS_API'],
                    onPlacePicked: (result) {
                      print(result);
                      Navigator.of(context).pop();
                    },
                    initialPosition: HomePage.kInitialPosition,
                    useCurrentLocation: true,
                  ),
                ),
              );
            },
          ),
        ),
        body: RefreshIndicator(
          child: ListView(
            children: [
              FoodSearch(),
              FoodBrannerSlide(),
              FoodMenu(),
              Restaurants()
            ],
          ),
          onRefresh: () => _refreshData(),
        ));
  }
}

Future _refreshData() async {
  await Future.delayed(Duration(seconds: 3));
  print('test');
  return "";
}

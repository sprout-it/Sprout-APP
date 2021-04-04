import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  List<ConvertRestaurants> _restaurantsAPI;

  @override
  void initState() {
    super.initState();
    getRestaurants();
  }

  Future<void> getRestaurants() async {
    var url = "${env['ENDPOINT_API']}/restaurants";
    try {
      var response = await http.get(url);
      print(response);
      if (response.statusCode == 200) {
        setState(() {
          _restaurantsAPI = convertRestaurantsFromJson(response.body);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _restaurantsAPI.length == null ? 0 : _restaurantsAPI.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          final res = _restaurantsAPI[index];
          return Column(
            children: <Widget>[
              Card(
                child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            res.imgUrl,
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Text(res.name)
                      ],
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}

// To parse this JSON data, do
//
//     final convertRestaurants = convertRestaurantsFromJson(jsonString);

List<ConvertRestaurants> convertRestaurantsFromJson(String str) =>
    List<ConvertRestaurants>.from(
        json.decode(str).map((x) => ConvertRestaurants.fromJson(x)));

String convertRestaurantsToJson(List<ConvertRestaurants> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ConvertRestaurants {
  ConvertRestaurants({
    this.imgUrl,
    this.rating,
    this.description,
    this.latitude,
    this.commissionRate,
    this.createdAt,
    this.name,
    this.longitude,
    this.updatedAt,
  });

  String imgUrl;
  String rating;
  String description;
  String latitude;
  String commissionRate;
  AtedAt createdAt;
  String name;
  String longitude;
  AtedAt updatedAt;

  factory ConvertRestaurants.fromJson(Map<String, dynamic> json) =>
      ConvertRestaurants(
        imgUrl: json["imgUrl"] == null ? null : json["imgUrl"],
        rating: json["rating"] == null ? null : json["rating"],
        description: json["description"] == null ? null : json["description"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        commissionRate:
            json["commission_rate"] == null ? null : json["commission_rate"],
        createdAt: json["created_at"] == null
            ? null
            : AtedAt.fromJson(json["created_at"]),
        name: json["name"] == null ? null : json["name"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        updatedAt: json["updated_at"] == null
            ? null
            : AtedAt.fromJson(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "imgUrl": imgUrl == null ? null : imgUrl,
        "rating": rating == null ? null : rating,
        "description": description == null ? null : description,
        "latitude": latitude == null ? null : latitude,
        "commission_rate": commissionRate == null ? null : commissionRate,
        "created_at": createdAt == null ? null : createdAt.toJson(),
        "name": name == null ? null : name,
        "longitude": longitude == null ? null : longitude,
        "updated_at": updatedAt == null ? null : updatedAt.toJson(),
      };
}

class AtedAt {
  AtedAt({
    this.seconds,
    this.nanoseconds,
  });

  int seconds;
  int nanoseconds;

  factory AtedAt.fromJson(Map<String, dynamic> json) => AtedAt(
        seconds: json["_seconds"] == null ? null : json["_seconds"],
        nanoseconds: json["_nanoseconds"] == null ? null : json["_nanoseconds"],
      );

  Map<String, dynamic> toJson() => {
        "_seconds": seconds == null ? null : seconds,
        "_nanoseconds": nanoseconds == null ? null : nanoseconds,
      };
}

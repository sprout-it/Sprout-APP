import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    var url = "http://localhost/restaurants";
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          _restaurantsAPI = convertRestaurantsFromJson(response.body);
        });
      } else {
        setState(() {
          _restaurantsAPI = [];
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2F%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%A7%E0%B8%99%2F%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%A7%E0%B8%99.jpg?alt=media&token=1e994cb7-32da-44e4-8319-6e4fc4be853b'),
            Text(_restaurantsAPI[0]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FLAEMCHAROEN%20SEAFOOD%2FLAEMCHAROEN%20SEAFOOD.jpg?alt=media&token=a8e381cf-5f29-482e-bedc-7840fcd7f49e'),
            Text(_restaurantsAPI[1]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2Fseenbangkok%2Fseenbangkok.jpg?alt=media&token=31b2e7c0-c6b8-48c5-9d0d-0b08dba7e90d'),
            Text(_restaurantsAPI[3]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FShinsen%20Fish%20Market%2FShinsen%20Fish%20Market.jpg?alt=media&token=98fda763-60db-4764-a314-621dfb8802fc'),
            Text(_restaurantsAPI[4]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FBowcake%2FBowcake.jpg?alt=media&token=f9f9e952-ac7d-4ad2-bad9-38fd91398ff4'),
            Text(_restaurantsAPI[5]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2Fkenshinizakaya%2Fkenshinizakaya.jpg?alt=media&token=422a09d5-e69b-4adf-ba3a-98bb337e3af0'),
            Text(_restaurantsAPI[6]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FK%20House%2FK%20House.jpg?alt=media&token=48d345a8-1489-4e59-837c-e0afef3db1f1'),
            Text(_restaurantsAPI[7]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FSushi%20Hana%2FSushi%20Hana.jpg?alt=media&token=ae14f7a1-1035-4482-841e-44de2b986c9c'),
            Text(_restaurantsAPI[8]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FBUTCHER%20beef%26beer%2FBUTCHER%20beef%26beer.jpg?alt=media&token=0e5d6eaf-84c1-4ca2-9296-d3c0ef812d24'),
            Text(_restaurantsAPI[9]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FDak%20Galbi%2FDak%20Galbi.jpg?alt=media&token=427455de-b5ed-4f94-b6c7-3a00d55ef533'),
            Text(_restaurantsAPI[10]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2FKatsukura%20Thailand%2FKatsukura%20Thailand.jpg?alt=media&token=fffc3806-c2e7-4e92-a541-790751fb5be1'),
            Text(_restaurantsAPI[11]?.name),
          ],
        ),
        Row(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/sprout-app-925ce.appspot.com/o/restaurants%2F%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%A7%E0%B8%99%2F%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%A7%E0%B8%99.jpg?alt=media&token=1e994cb7-32da-44e4-8319-6e4fc4be853b'),
            Text(_restaurantsAPI[12]?.name),
          ],
        ),
      ],
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

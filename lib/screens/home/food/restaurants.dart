import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  ConvertRestaurants _restaurantsAPI;

  @override
  void initState() {
    super.initState();
    getRestaurants();
  }

  Future<void> getRestaurants() async {
    var url = "http://localhost/restaurants";
    var response = await http.get(url);
    setState(() {
      _restaurantsAPI = convertRestaurantsFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_restaurantsAPI?.data.toString()),
    );
  }
}

// To parse this JSON data, do
//
//     final convertRestaurants = convertRestaurantsFromJson(jsonString);

ConvertRestaurants convertRestaurantsFromJson(String str) =>
    ConvertRestaurants.fromJson(json.decode(str));

String convertRestaurantsToJson(ConvertRestaurants data) =>
    json.encode(data.toJson());

class ConvertRestaurants {
  ConvertRestaurants({
    this.code,
    this.success,
    this.data,
  });

  int code;
  bool success;
  List<Datum> data;

  factory ConvertRestaurants.fromJson(Map<String, dynamic> json) =>
      ConvertRestaurants(
        code: json["code"] == null ? null : json["code"],
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "success": success == null ? null : success,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.longitude,
    this.latitude,
    this.commissionRate,
    this.name,
    this.updatedAt,
    this.createdAt,
    this.rating,
    this.description,
  });

  String longitude;
  String latitude;
  String commissionRate;
  String name;
  AtedAt updatedAt;
  AtedAt createdAt;
  String rating;
  String description;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        longitude: json["longitude"] == null ? null : json["longitude"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        commissionRate:
            json["commission_rate"] == null ? null : json["commission_rate"],
        name: json["name"] == null ? null : json["name"],
        updatedAt: json["updated_at"] == null
            ? null
            : AtedAt.fromJson(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : AtedAt.fromJson(json["created_at"]),
        rating: json["rating"] == null ? null : json["rating"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "longitude": longitude == null ? null : longitude,
        "latitude": latitude == null ? null : latitude,
        "commission_rate": commissionRate == null ? null : commissionRate,
        "name": name == null ? null : name,
        "updated_at": updatedAt == null ? null : updatedAt.toJson(),
        "created_at": createdAt == null ? null : createdAt.toJson(),
        "rating": rating == null ? null : rating,
        "description": description == null ? null : description,
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

import 'package:flutter/material.dart';

class FoodSearch extends StatefulWidget {
  @override
  _FoodSearchState createState() => _FoodSearchState();
}

class _FoodSearchState extends State<FoodSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20,
                ),
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                decoration: BoxDecoration(
                  color: Colors.greenAccent[700],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onTap: () {
                print("search");
              },
            ),
          ),
          Expanded(
            flex: 8,
            child: InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Text(
                  "Search",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent[700]),
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 50, 10),
          height: 24,
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              hintText: 'Search in Sprout',
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(3.0),
              bottomRight: Radius.circular(3.0),
            ),
          ),
        ),
      ),
    );
  }
}

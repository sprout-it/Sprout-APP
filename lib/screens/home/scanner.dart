import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Icon(Icons.crop_free_sharp),
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3.0),
              bottomLeft: Radius.circular(3.0),
            ),
          ),
        ),
      ),
    );

    // ;
  }
}

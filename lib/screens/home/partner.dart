import 'package:flutter/material.dart';

class Partner extends StatefulWidget {
  @override
  _PartnerState createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Partner"),
      ),
      body: Center(
        child: Text("Partner"),
      ),
    );
  }
}

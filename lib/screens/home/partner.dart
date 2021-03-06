import 'package:flutter/material.dart';

class Partner extends StatefulWidget {
  @override
  _PartnerState createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/partner.png',
                fit: BoxFit.cover,
                height: 50,
              ),
              Text("Partner")
            ],
          ),
        ),
        onTap: () {
          print("Partner");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}
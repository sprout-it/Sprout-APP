import 'package:flutter/material.dart';

class WalletPoint extends StatefulWidget {
  @override
  _WalletPointState createState() => _WalletPointState();
}

class _WalletPointState extends State<WalletPoint> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          height: 50,
          child: Text(
            "0 Wallet",
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[350]),
              left: BorderSide(color: Colors.grey[350]),
            ),
          ),
        ),
        onTap: () {
          print("0 Wallet");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}

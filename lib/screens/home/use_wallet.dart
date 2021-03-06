import 'package:flutter/material.dart';

class UseWallet extends StatefulWidget {
  @override
  _UseWalletState createState() => _UseWalletState();
}

class _UseWalletState extends State<UseWallet> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          height: 50,
          child: Text(
            "ใช้ Wallet",
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[350]),
            ),
          ),
        ),
        onTap: () {
          print("ใช้ Wallet");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Account()),
          // );
        },
      ),
    );
  }
}

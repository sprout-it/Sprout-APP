import 'package:flutter/material.dart';
import 'addcard.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Text(
            "วิธีการชำระเงิน",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/images/bike2.png',
                          height: 50,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                            "เต็มอิ่มกับสิทธิประโยชน์สุดคุ้ม เมื่อใช้ Sprout Wallet"),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text("เปิดใช้งาน Sprout Wallet"),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AddCard()),
                      // );
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.add),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Text("เพิ่มบัตรเครดิตหรือเดบิต"),
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddCard()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

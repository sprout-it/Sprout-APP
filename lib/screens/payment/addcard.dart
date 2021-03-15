import 'package:flutter/material.dart';

enum CardType {
  MasterCard,
  Visa,
  Verve,
  Others, // Any other card issuer
  Invalid // We'll use this when the card is invalid
}

class PaymentCard {
  CardType type;
  String number;
  String name;
  int month;
  int year;
  int cvv;

  PaymentCard(
      {this.type, this.number, this.name, this.month, this.year, this.cvv});
}

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("เพิ่มบัตร"),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.credit_card),
                labelText: 'หมายเลขบัตร',
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'MM/YY',
                      labelText: 'วันหมดอายุ',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'CVV',
                      labelText: 'CVV',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'ประเทศที่ออกบัตร',
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Text("เปลี่ยน"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Text(
                    "เราจะหักเงินเพื่อใช้ยืนยันบัตรของคุณก่อน เงินจะถูกหักอัตโนมัติภายหลังเมื่อดำเนินการต่อจะถือว่าคุณยอมรับข้อกำหนดและเงื่อนไขของเรา"),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("บันทึก"),
            ),
          ],
        ),
      ),
    );
  }
}

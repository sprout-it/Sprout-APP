import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BannerSlide extends StatefulWidget {
  @override
  _BannerSlideState createState() => _BannerSlideState();
}

class _BannerSlideState extends State<BannerSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: double.infinity,
      child: Carousel(
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 5.0,
        dotPosition: DotPosition.bottomRight,
        images: [
          InkWell(
            child: Image.asset(
              'assets/images/discount20.png',
              fit: BoxFit.contain,
            ),
            onTap: () {
              print("discount20 branner");
            },
          ),
          InkWell(
            child: Image.asset(
              'assets/images/free_shipping.png',
              fit: BoxFit.contain,
            ),
            onTap: () {
              print("free_shipping branner");
            },
          ),
          InkWell(
            child: Image.asset(
              'assets/images/monitor.jpg',
              fit: BoxFit.contain,
            ),
            onTap: () {
              print("monitor branner");
            },
          ),
          InkWell(
            child: Image.asset(
              'assets/images/checkhand.jpg',
              fit: BoxFit.contain,
            ),
            onTap: () {
              print("checkhand branner");
            },
          ),
        ],
      ),
    );
  }
}

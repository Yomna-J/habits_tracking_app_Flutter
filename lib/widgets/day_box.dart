import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';

class DayBox extends StatelessWidget {
  final String day;
  final int date;
  final double height;
  final double width;
  final bool active;

  const DayBox({
    Key? key,
    required this.day,
    required this.date,
    this.height = 90,
    this.width = 90,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        //TODO Add shadow
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: active == true
              ? [
                  kPrimaryOrange,
                  kLightOrange,
                  KLastOrange,
                ]
              : [Colors.white, Colors.white],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                color: active == true ? Colors.white : Colors.black,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(text: '$day\n', style: TextStyle(fontSize: 20)),
                TextSpan(text: '$date', style: TextStyle(fontSize: 40)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';
import 'package:habits_tracking_app/widgets/day_box.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.10,
        title: Text(
          'Activities',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.menu, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  DayBox(day: 'MON', date: 5, active: true),
                  DayBox(day: 'MON', date: 6),
                  DayBox(day: 'MON', date: 7),
                  DayBox(day: 'MON', date: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';
import 'package:habits_tracking_app/widgets/activity_card.dart';
import 'package:habits_tracking_app/widgets/day_box.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int current = 0;
  var blocks = {'MON': 5, 'TUE': 6, 'WED': 7, 'THU': 8};

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
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: <Widget>[
            Container(
              height: 90,
              child: ListView.builder(
                itemCount: blocks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: DayBox(
                        date: blocks.values.elementAt(index),
                        day: '${blocks.keys.elementAt(index)}',
                        active: current == index),
                  );
                },
              ),
            ),
            SizedBox(height: size.height * .05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Text(
                    'Outdoor',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 25),
                  Text(
                    'Indoor',
                    style: TextStyle(
                      color: kGray,
                      fontFamily: 'OpenSans',
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ActivityCard(
                title: 'Yoga',
                image: 'assets/images/image-2.png',
                color1: kPrimaryPurple,
                color2: kBlue,
                btnTxtColor: kDarkPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

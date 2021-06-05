import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';
import 'package:habits_tracking_app/widgets/activity_card.dart';
import 'package:habits_tracking_app/widgets/day_box.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int currentDay = 0;
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
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Icon(Icons.menu, color: Colors.black, size: 30),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
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
                          currentDay = index;
                        });
                      },
                      child: DayBox(
                          date: blocks.values.elementAt(index),
                          day: '${blocks.keys.elementAt(index)}',
                          active: currentDay == index),
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * .02),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ActivityCard(
                      title: 'Yoga',
                      image: 'assets/images/image-2.png',
                      color1: kPrimaryPurple,
                      color2: kBlue,
                      btnTxtColor: kDarkPurple,
                    ),
                    SizedBox(height: 20),
                    ActivityCard(
                      title: 'Cycling',
                      image: 'assets/images/image-3.png',
                      color1: kLightBlue,
                      color2: kCyan,
                      btnTxtColor: kLightBlue,
                    ),
                    SizedBox(height: 20),
                    ActivityCard(
                      title: 'Running',
                      image: 'assets/images/image-4.png',
                      color1: kLightPurple,
                      color2: kCoral,
                      btnTxtColor: kCoral,
                      rightValue: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

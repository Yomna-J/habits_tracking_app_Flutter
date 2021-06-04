import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';
import 'package:habits_tracking_app/widgets/custom_switch.dart';
import 'package:habits_tracking_app/widgets/habit_reminder.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.10,
        title: Text(
          'Hello, John',
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              'Reminder Habit',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  HabitReminder(habit: 'Cycling'),
                  HabitReminder(habit: 'Studied', status: true),
                  HabitReminder(habit: 'Work'),
                  HabitReminder(habit: 'Running'),
                ],
              ),
            ),
            Text(
              'Result',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

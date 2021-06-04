import 'package:flutter/material.dart';
import 'package:habits_tracking_app/widgets/custom_switch.dart';

import '../constants.dart';

class HabitReminder extends StatefulWidget {
  final String habit;
  bool status;

  HabitReminder({required this.habit, this.status = false});
  @override
  _HabitReminderState createState() => _HabitReminderState();
}

class _HabitReminderState extends State<HabitReminder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 15),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.status == true ? kGray : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.habit,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
          //SizedBox(width: 100),
          CustomSwitch(
            value: widget.status,
            onChanged: (value) {
              setState(() {
                widget.status = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:habits_tracking_app/screens/activities_screen.dart';
import 'package:habits_tracking_app/screens/profile_screen.dart';
import 'package:habits_tracking_app/screens/settings_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _screens = [Activities(), Profile(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Image.asset('assets/icons/icon-2-colored.png', width: 25)
                : Image.asset('assets/icons/icon-2.png', width: 25),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Image.asset('assets/icons/icon-3-colored.png', width: 25)
                : Image.asset('assets/icons/icon-3.png', width: 25),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/icon-4.png', width: 25),
            label: '',
          ),
        ],
      ),
    );
  }
}

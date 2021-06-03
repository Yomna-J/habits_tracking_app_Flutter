import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color1;
  final Color color2;
  final Color btnTxtColor;
  final double rightValue;

  const ActivityCard({
    Key? key,
    required this.title,
    required this.image,
    required this.color1,
    required this.color2,
    required this.btnTxtColor,
    this.rightValue = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 45, top: 13, bottom: 10),
      height: 135,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 25,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'Start Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w800,
                    color: btnTxtColor,
                  ),
                )),
              ),
            ),
          ),
          Positioned(
            right: rightValue,
            child: Image.asset(
              image,
              height: 110,
            ),
          ),
        ],
      ),
    );
  }
}

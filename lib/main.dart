import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: ClipPath(
                  clipper: Clipper(),
                  child: Container(
                    height: size.height * .55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color(0xFFF68159),
                          Color(0xFFF5A05B),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * .08,
                child: Image.asset(
                  'assets/images/image-1.png',
                  height: size.height * .5,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * .08),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w800,
                fontFamily: 'OpenSans',
                height: 1.0,
              ),
              children: [
                TextSpan(
                  text: 'Lets Start\n',
                ),
                TextSpan(
                  text: 'Your Habits',
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * .03),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w100,
              ),
              children: [
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet,\n consectetuer adipiscing elit, sed\n diam nonummy nibh ',
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * .05),
          Container(
            height: size.height * .09,
            width: size.width * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Color(0xFFF68159),
                  Color(0xFFF5A05B),
                ],
              ),
            ),
            child: Center(
              child: Text(
                'START NOW',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height + 30, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

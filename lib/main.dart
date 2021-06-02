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
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: ClipPath(
                  clipper: Clipper(),
                  child: Container(
                    height: size.height * .57,
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
                top: size.height * 0.10,
                child: Image.asset(
                  'assets/images/image-1.png',
                  height: size.height * .5,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * .08),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Lets Start",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      //fontWeight: FontWeight.w800,
                      fontFamily: 'OpenSans'),
                ),
              ],
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

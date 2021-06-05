import 'package:flutter/material.dart';
import 'package:habits_tracking_app/constants.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class HabitProgress extends StatelessWidget {
  final int percentage;
  final String habit;

  const HabitProgress({
    Key? key,
    required this.percentage,
    required this.habit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double angleDegree = percentage / 100 * -360;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CustomPaint(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: kShadow.withOpacity(0.8),
                  spreadRadius: .8,
                  blurRadius: 4,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            child: Center(
                child: Text(
              '$percentage%',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w600,
              ),
            )),
          ),
          painter: RadialPainter(angleDegree),
        ),
        SizedBox(height: 15),
        Text(
          habit,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

// https://github.com/TechieBlossom/FitnessApp
class RadialPainter extends CustomPainter {
  double progressInDegrees;

  RadialPainter(this.progressInDegrees);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12.0;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, size.width / 2, paint);

    paint.color = Colors.red;
    Paint progressPaint = Paint()
      ..shader = LinearGradient(colors: [kPrimaryOrange, kLightOrange])
          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12.0;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90),
        math.radians(progressInDegrees),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

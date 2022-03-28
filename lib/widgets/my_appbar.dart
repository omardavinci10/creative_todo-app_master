import 'package:creative_app/constantes/colors.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

Widget myAppBar() {
  return NewGradientAppBar(
    flexibleSpace: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomPaint(
          painter: CircleOne(),
        ),
        CustomPaint(
          painter: CircleTwo(),
        ),
      ],
    ),
    title: Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello Doaa!',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Text(
            'Today you have no tasks',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/photo.jpg',
          ),
        ),
      )
    ],
    elevation: 5,
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [MyColors.headerBlueDark, MyColors.headerBlueLight],
    ),
  );
}

class CircleOne extends CustomPainter {
  late Paint _paint;

  CircleOne() {
    _paint = Paint()
      ..color = MyColors.headerCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(30, 0.0), 100, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircleTwo extends CustomPainter {
  late Paint _paint;

  CircleTwo() {
    _paint = Paint()
      ..color = MyColors.headerCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(-30, 20), 60.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

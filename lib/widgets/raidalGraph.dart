import 'dart:math';

import 'package:flutter/material.dart';

class RadialGraph extends StatelessWidget {
  const RadialGraph({
    Key key,
    @required this.completepercent,
    @required this.graphradius,
    @required this.width,
    @required this.height,
    this.maxangle = 2 * pi,
    this.completecolor = Colors.green,
    this.incompletecolor = Colors.grey,
    this.graphwidth = 5,
    this.startangle = 0,
  }) : super(key: key);

  final Color completecolor;
  final Color incompletecolor;
  final double maxangle;
  final double graphwidth;
  final double completepercent;
  final double graphradius;
  final double startangle;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: GraphPainter(
        completepercent: completepercent,
        graphradius: graphradius,
        maxangle: maxangle,
        completecolor: completecolor,
        incompletecolor: incompletecolor,
        graphwidth: graphwidth,
        startangle: startangle,
      ),
      size: Size(10, 10),
    );
  }
}

class GraphPainter extends CustomPainter {
  final Color completecolor;
  final Color incompletecolor;
  final double maxangle;
  final double graphwidth;
  final double completepercent;
  final double graphradius;
  final double startangle;

  GraphPainter({
    this.completecolor = Colors.green,
    this.incompletecolor = Colors.grey,
    this.maxangle = 2 * pi,
    this.graphwidth = 5,
    this.startangle = 0,
    @required this.graphradius,
    @required this.completepercent,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint incomplete = new Paint();
    incomplete.color = incompletecolor;
    incomplete.strokeCap = StrokeCap.round;
    incomplete.style = PaintingStyle.stroke;
    incomplete.strokeWidth = graphwidth;

    Paint complete = new Paint();
    complete.color = completecolor;
    complete.strokeCap = StrokeCap.round;
    complete.style = PaintingStyle.stroke;
    complete.strokeWidth = graphwidth;

    Offset center;

    if (completepercent < 0 && maxangle < 0 && maxangle >= -pi) {
      center = new Offset(size.width, size.height / 2);
    } else if (completepercent > 0 && maxangle > 0 && maxangle <= pi) {
      center = new Offset(0, size.height / 2);
    } else {
      center = new Offset(size.width / 2, size.height / 2);
    }

    canvas.drawArc(
      new Rect.fromCircle(center: center, radius: graphradius),
      startangle - pi / 2,
      maxangle,
      false,
      incomplete,
    );
    double arcAngle;

    completepercent > 100
        ? arcAngle = 2 * pi * (100 / 100)
        : arcAngle = 2 * pi * (completepercent / 100);
    if (maxangle < 0 && arcAngle < 0) arcAngle *= -1;

    canvas.drawArc(
      new Rect.fromCircle(center: center, radius: graphradius),
      startangle - pi / 2,
      arcAngle * (maxangle / (2 * pi)),
      false,
      complete,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

import 'customClipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: -pi / 3.5, 
        child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height *.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff01579B),Color(0xff03A9F4)]
              )
            ),
        ),
      ),
      )
    );
  }
}
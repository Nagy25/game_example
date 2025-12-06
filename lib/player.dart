import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Player extends CircleComponent {
  Player({
    required super.position,
    required double radius,
    Color color = Colors.red,
  }) : super(
         radius: radius,
         paint: Paint()
           ..color = color
           ..style = PaintingStyle.fill,
         anchor: Anchor.center,
       );
}

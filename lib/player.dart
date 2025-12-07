import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:game_example/game/go_green_game.dart';

class Player extends CircleComponent with HasGameReference<GoGreenGame> {
  Player({
    required double radius,
    Color color = Colors.red,
    required Vector2 gameSize,
  }) : super(
         radius: radius,
         paint: Paint()
           ..color = color
           ..style = PaintingStyle.fill,
         anchor: Anchor.center,
         position: Vector2(0, -((gameSize.x / 2) + radius)),
       );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);
    double newY = position.y + dt * 100;
    if (newY > (game.size.y / 2) - (size.y / 2)) {
      newY = (game.size.y / 2) - (size.y / 2);
    }
    position.setValues(position.x, newY);
  }

  void move(double deltaX) {
    double newX = position.x + deltaX;

    final minX = -(game.size.x / 2) + size.x / 2;
    final maxX = (game.size.x / 2) - size.x / 2;
    newX = newX.clamp(minX, maxX);
    position.setValues(newX, position.y);
  }
}

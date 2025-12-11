import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:game_example/crash.dart';
import 'package:game_example/game/go_green_game.dart';

import '../bin.dart';
import '../player.dart';

class GoGreenWorld extends World with HasGameReference<GoGreenGame> {
  late Player player;
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player = Player(radius: 30, color: Colors.white, gameSize: game.size);

    add(player);
    add(Bin());

    add(Accident()..position.setValues(0, 0));
    add(Crash()..position.setValues((game.size.x / 2) - 35, 0));
    add(Window()..position.setValues(-((game.size.x / 2) - 35), 0));
  }

  @override
  void update(double dt) {
    super.update(dt);
    children.whereType<Obstacle>().forEach((obstacle) {
      obstacle.position.y -= (dt * 400);
      if (obstacle.position.y < -(game.size.y / 2)) {
        obstacle.position.y = game.size.y;
      }
    });
  }
}

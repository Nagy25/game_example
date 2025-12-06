import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:game_example/game/go_green_game.dart';

import '../player.dart';

class GoGreenWorld extends World with HasGameReference<GoGreenGame> {
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(Player(position: Vector2(0, 0), radius: 50));
    add(Player(position: Vector2(0, 100), radius: 100, color: Colors.white));
  }
}

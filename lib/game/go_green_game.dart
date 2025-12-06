import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_example/game/go_green_world.dart';

class GoGreenGame extends FlameGame {
  GoGreenGame() : super(world: GoGreenWorld());

  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}

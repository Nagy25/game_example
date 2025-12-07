import 'dart:ui';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_example/game/go_green_world.dart';

class GoGreenGame extends FlameGame<GoGreenWorld>
    with HorizontalDragDetector, HasCollisionDetection {
  GoGreenGame() : super(world: GoGreenWorld());

  @override
  Future<void> onLoad() async {
    super.onLoad();
    debugMode = true;
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }

  @override
  void onHorizontalDragUpdate(DragUpdateInfo info) {
    super.onHorizontalDragUpdate(info);
    world.player.move(info.delta.global.x);
  }
}

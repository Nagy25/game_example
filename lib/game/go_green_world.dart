import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
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
  }
}

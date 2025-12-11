import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import 'game/go_green_game.dart';

class Obstacle extends SpriteComponent with HasGameReference<GoGreenGame> {
  final String path;
  Obstacle({required this.path});
  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await game.loadSprite(path);
    size = Vector2.all(70);
    anchor = Anchor.center;
    add(CircleHitbox());
  }
}

class Accident extends Obstacle {
  Accident() : super(path: 'accident.png');
}

class Crash extends Obstacle {
  Crash() : super(path: 'crash.png');
}

class Window extends Obstacle {
  Window() : super(path: 'window.png');
}

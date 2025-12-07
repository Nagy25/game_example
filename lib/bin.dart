import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:game_example/game/go_green_game.dart';
import 'package:game_example/player.dart';

class Bin extends SpriteComponent
    with HasGameReference<GoGreenGame>, CollisionCallbacks {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await game.loadSprite('basket.png');
    size = Vector2.all(100);
    anchor = Anchor.center;
    position = Vector2(0, (game.size.y / 2) - (size.y / 2));
    add(RectangleHitbox());
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    if (other is Player && other.position.y > position.y) {
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}

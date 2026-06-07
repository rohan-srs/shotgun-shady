import 'package:shotgun_roulette/game/models/player.dart';

class PlayerEngine {
  static void damage(
    Player player,
    int amount,
  ) {
    player.lives -= amount;

    if (player.lives < 0) {
      player.lives = 0;
    }
  }

  static void heal(
    Player player,
    int amount,
    int maxLives,
  ) {
    player.lives += amount;

    if (player.lives > maxLives) {
      player.lives = maxLives;
    }
  }

  static void instantKill(
    Player player,
  ) {
    player.lives = 0;
  }
}

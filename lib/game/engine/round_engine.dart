import 'package:shotgun_roulette/game/models/enums.dart';
import 'package:shotgun_roulette/game/models/player.dart';

class RoundEngine {

  static int roundLives(
    GameRound round,
  ) {
    switch (round) {
      case GameRound.round1:
        return 3;

      case GameRound.round2:
        return 5;

      case GameRound.round3:
        return 7;
    }
  }

  static bool isRoundOver(
    Player p1,
    Player p2,
  ) {
    return p1.lives <= 0 ||
        p2.lives <= 0;
  }

  static bool shouldInstantKill(
    GameRound round,
    Player target,
  ) {
    return round ==
            GameRound.round3 &&
        target.lives <= 3;
  }

  static int nextPlayer(
    int current,
  ) {
    return current == 1 ? 2 : 1;
  }
}

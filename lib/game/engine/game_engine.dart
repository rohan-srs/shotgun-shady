import 'package:shotgun_roulette/game/models/game_state.dart';

class GameEngine {

  late GameState state;

  GameEngine();

  void startGame() {}

  void startRound() {}

  void shootSelf() {}

  void shootOpponent() {}

  void reload() {}

  void useItem() {}

  void endRound() {}

  bool isGameOver() {
    return state.player1RoundWins >= 2 ||
        state.player2RoundWins >= 2;
  }
}

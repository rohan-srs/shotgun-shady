import 'round_state.dart';

class GameState {
  int player1RoundWins;

  int player2RoundWins;

  RoundState currentRound;

  bool gameFinished;

  GameState({
    required this.player1RoundWins,
    required this.player2RoundWins,
    required this.currentRound,
    this.gameFinished = false,
  });
}

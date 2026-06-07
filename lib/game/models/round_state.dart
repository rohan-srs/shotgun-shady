import 'chamber.dart';
import 'enums.dart';
import 'known_shell.dart';
import 'player.dart';

class RoundState {
  final GameRound round;

  final Player player1;

  final Player player2;

  final Chamber chamber;

  int currentPlayerIndex;

  final List<KnownShell> discoveredShells;

  RoundState({
    required this.round,
    required this.player1,
    required this.player2,
    required this.chamber,
    required this.currentPlayerIndex,
    List<KnownShell>? discoveredShells,
  }) : discoveredShells = discoveredShells ?? [];
}

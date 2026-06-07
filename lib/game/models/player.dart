import 'package:shotgun_roulette/game/models/player_effects.dart';
import 'item.dart';

class Player {
  final String id;

  final String name;

  int lives;

  PlayerEffects effects;

  final List<Item> inventory;

  Player({
    required this.id,
    required this.name,
    required this.lives,
    required this.effects,
    List<Item>? inventory,
  }) : inventory = inventory ?? [];
}

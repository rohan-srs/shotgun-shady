import 'dart:math';

import 'package:shotgun_roulette/game/engine/chamber_engine.dart';
import 'package:shotgun_roulette/game/engine/player_engine.dart';
import 'package:shotgun_roulette/game/models/chamber.dart';
import 'package:shotgun_roulette/game/models/enums.dart';
import 'package:shotgun_roulette/game/models/item.dart';
import 'package:shotgun_roulette/game/models/known_shell.dart';
import 'package:shotgun_roulette/game/models/player.dart';

class ItemEngine {

  static void useCigarettes({
    required Player player,
    required int maxLives,
  }) {
    PlayerEngine.heal(
      player,
      1,
      maxLives,
    );
  }

  static void useHandSaw(
    Player player,
  ) {
    player.effects.handSawActive = true;
  }

  static void useHandcuffs(
    Player opponent,
  ) {
    opponent.effects.skipNextTurn = true;
  }

  static void useBeer(
    Chamber chamber,
  ) {
    ChamberEngine.eject(chamber);
  }

  static ShellType useMagnifyingGlass(
    Chamber chamber,
  ) {
    return ChamberEngine
        .peek(chamber)
        .type;
  }

  static KnownShell useBurnerPhone(
    Chamber chamber,
  ) {
    final index =
        Random().nextInt(
      chamber.shells.length,
    );

    return KnownShell(
      position: index,
      shellType:
          chamber.shells[index].type,
    );
  }

  static void useInverter(
    Chamber chamber,
  ) {
    ChamberEngine.invert(chamber);
  }

  static Item stealItem(
    Player victim,
    ItemType type,
  ) {
    final item =
        victim.inventory.firstWhere(
      (i) => i.type == type,
    );

    victim.inventory.remove(item);

    return item;
  }
}

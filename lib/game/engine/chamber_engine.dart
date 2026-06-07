import 'dart:math';

import 'package:shotgun_roulette/game/models/chamber.dart';
import 'package:shotgun_roulette/game/models/enums.dart';
import 'package:shotgun_roulette/game/models/shell.dart';

class ChamberEngine {

  static Chamber generateChamber() {

    final random = Random();

    final liveCount =
        random.nextInt(4) + 2;

    final blankCount =
        random.nextInt(4) + 2;

    final shells = <Shell>[
      ...List.generate(
        liveCount,
        (_) => const Shell(
          type: ShellType.live,
        ),
      ),
      ...List.generate(
        blankCount,
        (_) => const Shell(
          type: ShellType.blank,
        ),
      ),
    ];

    shells.shuffle();

    return Chamber(shells: shells);
  }

  static Shell fire(
    Chamber chamber,
  ) {
    return chamber.shells.removeAt(0);
  }

  static Shell peek(
    Chamber chamber,
  ) {
    return chamber.shells.first;
  }

  static void eject(
    Chamber chamber,
  ) {
    chamber.shells.removeAt(0);
  }

  static void invert(
    Chamber chamber,
  ) {
    for (var i = 0;
        i < chamber.shells.length;
        i++) {

      chamber.shells[i] = Shell(
        type:
            chamber.shells[i].type ==
                    ShellType.live
                ? ShellType.blank
                : ShellType.live,
      );
    }
  }

  static bool isEmpty(
    Chamber chamber,
  ) {
    return chamber.shells.isEmpty;
  }
}

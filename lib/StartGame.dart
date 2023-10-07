import 'package:flutter/material.dart';
import 'package:metrovalencia/widgets/ArrowBackGame.dart';
import 'package:metrovalencia/widgets/ArrowForwardGame.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';
import 'package:metrovalencia/widgets/mainMenu.dart';
import 'GameFlow.dart';

import 'widgets/AnimateText.dart';

class StartGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          mainMenu(),
          arrowForwardGame(context, coheteGrande()),
          arrowBackGame(context),
          ElevatedButton(
            child: const Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
}

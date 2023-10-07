import 'package:flutter/material.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';
import 'package:metrovalencia/widgets/mainMenu.dart';
import 'GameFlow.dart';

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context) {
    return mainMenu(context);
  }
}

import 'package:flutter/material.dart';
import 'package:metrovalencia/Clases/enunciado.dart';
import 'package:metrovalencia/widgets/ArrowBackGame.dart';
import 'package:metrovalencia/widgets/ArrowForwardGame.dart';
import 'package:metrovalencia/widgets/appDialog.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';
import 'package:metrovalencia/widgets/dialogoHistoria.dart';
import 'package:metrovalencia/widgets/mainMenu.dart';
import 'GameFlow.dart';

import 'widgets/AnimateText.dart';

class StartGame extends StatefulWidget {
  final Enunciado enunciado;
  bool tieneTexto = false;
  StartGame({super.key, required this.enunciado, required this.tieneTexto});
  @override
  State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    if (widget.tieneTexto) {
      return Scaffold(
        body: Stack(
          children: [
            const mainMenu(),
            arrowForwardGame(context, const SecondRoute(), false),
            arrowBackGame(context),
            dialogoHistoria(enunciado: widget.enunciado),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                //s enunciadoReal.frases
              },
            ),
          ],
        ),
      );
    } else {
      print("asdfsdsagsgggs");
      return Scaffold(
        body: Stack(
          children: [
            const mainMenu(),
            arrowForwardGame(context, const SecondRoute(), false),
            arrowBackGame(context),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                //s enunciadoReal.frases
              },
            ),
          ],
        ),
      );
    }
  }
}

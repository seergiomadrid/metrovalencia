// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:metrovalencia/Clases/enunciado.dart';
import 'package:metrovalencia/StartGame.dart';
import 'package:metrovalencia/animacion/noAnimation.dart';
import 'package:metrovalencia/widgets/ArrowForwardGame.dart';
import 'package:metrovalencia/widgets/dialogoHistoria.dart';
import 'package:metrovalencia/widgets/mainMenu.dart';
import 'package:metrovalencia/widgets/mainMenuFalso.dart';
import 'GameFlow.dart';

class notStarted extends StatefulWidget {
  final Enunciado enunciado;
  bool tieneTexto = false;
  notStarted({super.key, required this.enunciado, required this.tieneTexto});
  @override
  State<notStarted> createState() => _notStartedState();
}

class _notStartedState extends State<notStarted> {
  @override
  Widget build(BuildContext context) {
    if (widget.tieneTexto) {
      return Scaffold(
        body: Stack(
          children: [
            const mainMenu(),
            arrowForwardGame(context, const SecondRoute(), false),
            dialogoHistoria(enunciado: widget.enunciado),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [
            const mainMenuFalso(),
            //arrowForwardGame(context, const SecondRoute(), false),
            //arrowBackGame(context),
            Align(
              alignment: Alignment
                  .bottomCenter, // Esto alinea el botón en la parte inferior y en el centro
              child: Padding(
                // Puedes agregar Padding para dar espacio desde el borde inferior si lo deseas
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black), // Cambia al color que desees
                  ),
                  child: const Text("Start the adventure"),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      NoAnimationPageRoute(
                          builder: (context) => StartGame(
                                enunciado: widget.enunciado,
                                tieneTexto: true,
                              )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

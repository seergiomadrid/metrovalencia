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
            dialogoHistoria(enunciado: widget.enunciado),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [
            const mainMenu(),
            arrowForwardGame(context, const SecondRoute(), false),
            //arrowBackGame(context),
            // Align(
            //   alignment: Alignment
            //       .bottomCenter, // Esto alinea el botón en la parte inferior y en el centro
            //   child: Padding(
            //     // Puedes agregar Padding para dar espacio desde el borde inferior si lo deseas
            //     padding: const EdgeInsets.all(20.0),
            //     child: ElevatedButton(
            //       style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all<Color>(
            //             Colors.black), // Cambia al color que desees
            //       ),
            //       child: Text("Start the adventure"),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => StartGame(
            //                     enunciado: widget.enunciado,
            //                     tieneTexto: true,
            //                   )),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    }
  }
}

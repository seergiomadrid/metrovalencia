import 'package:flutter/material.dart';
import 'package:metrovalencia/Clases/Pregunta.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/widgets/ArrowBackGame.dart';
import 'package:metrovalencia/widgets/ArrowForwardGame.dart';

class titan extends StatefulWidget {
  final String path;
  final Pregunta pregunta;
  const titan({super.key, required this.path, required this.pregunta});

  @override
  State<titan> createState() => _titanState();
}

class _titanState extends State<titan> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/assetsHubleLegacyField.png'), // Replace with your image asset path
            fit: BoxFit.cover, // You can adjust the fit mode as needed
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: 600,
                  child: Hero(
                    tag: 'imageTitan',
                    child: Image.asset(widget.path),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      arrowBackGame(context),
      arrowForwardGame(
          context, RoutePreguntas(preguntaEsta: widget.pregunta), false)
    ]);
  }
}

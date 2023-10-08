import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metrovalencia/Clases/enunciado.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/StartGame.dart';
import 'package:metrovalencia/animacion/noAnimation.dart';
import 'package:metrovalencia/widgets/AnimateText.dart';

class dialogoHistoria extends StatefulWidget {
  final Enunciado enunciado;

  dialogoHistoria({super.key, required this.enunciado});

  @override
  State<dialogoHistoria> createState() => _dialogoHistoriaState();
}

class _dialogoHistoriaState extends State<dialogoHistoria> {
  int index = 0;
  late AnimatedTextWidget animatedTextWidget;
  @override
  Widget build(BuildContext context) {
    animatedTextWidget = AnimatedTextWidget(
      text: widget.enunciado.frases[index],
    );
    return Stack(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5, // 50% del ancho
            height: MediaQuery.of(context).size.height * 0.5, // 50% del alto
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Column(
              children: [
                // Esto tomará todo el espacio disponible y centrará el texto dentro de él
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        widget.enunciado.frases[index],
                        style: GoogleFonts.orbitron(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // Esto fijará el botón en la parte inferior y agregarás el padding alrededor
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black), // Cambia al color que desees
                    ),
                    onPressed: () {
                      if (index < widget.enunciado.frases.length - 1) {
                        setState(() {
                          index = index + 1;
                          //animatedTextWidget.updateText("aaaa");
                        });
                      } else {
                        Navigator.of(context).pushReplacement(
                          NoAnimationPageRoute(
                            builder: (context) => StartGame(
                                enunciado: Enunciado(frases: []),
                                tieneTexto: false),
                          ),
                        );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => StartGame(
                        //             enunciado: Enunciado(frases: []),
                        //             tieneTexto: false,
                        //           )),
                        // );
                      }
                    },
                    child: Text("Next"),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

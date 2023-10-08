import 'package:flutter/material.dart';
import 'package:metrovalencia/Clases/enunciado.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/widgets/AnimateText.dart';

class dialogoHistoria extends StatelessWidget {
  final Enunciado enunciado;
  const dialogoHistoria({super.key, required this.enunciado});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://media.discordapp.net/attachments/887261177980260412/1160236858840727624/adf79300-2f66-44ff-a914-89b964c9d66d.png?ex=6533edc7&is=652178c7&hm=cc678f1e90edb9c57a407a0eca6219ba66e977af27bc5214edc59ca60d9ab132&=&width=1191&height=670', // Reemplaza con la URL de la imagen en Internet
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
          ),
        ),
        Positioned(
          bottom: 400, // Separación de la parte inferior
          left: MediaQuery.of(context).size.width *
              0.12, // Asumiendo que deseas centrarlo
          child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width *
                  0.75, // Tomará el 50% del ancho de la pantalla
              decoration: BoxDecoration(
                color: Colors
                    .transparent, // Color base oscuro para una temática espacial
                borderRadius: BorderRadius.circular(5), // Borde redondeado
                border: Border.all(
                  color: Colors
                      .white, // Color que puede recordar a estrellas o constelaciones
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.5), // Sombra con un tono azul para un efecto 'galáctico'
                    spreadRadius: 2,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: AnimatedTextWidget(
                text: "Esta es la pregunta : ${pregunta.enunciado}",
              )),
        ),
      ],
    );
  }
}

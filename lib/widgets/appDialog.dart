import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metrovalencia/Clases/Pregunta.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/widgets/correctAnswer.dart';

import 'AnimateText.dart';

Widget appDialog(BuildContext context, Pregunta pregunta) {
  // Maybe use this: String question, String answer1, nextPage1

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
      Positioned(
        bottom: 170, // Separación de la parte inferior
        left: MediaQuery.of(context).size.width *
            0.12, // Asumiendo que deseas centrarlo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width *
                  0.75, // Ancho del cuadro de texto
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

              child: ElevatedButton(
                onPressed: () {
                  if (pregunta.respuesta1.correcta) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Route4(
                                  respuesta: pregunta.respuesta1,
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Route5(respuesta: pregunta.respuesta1),
                        ));
                  }
                },
                child: Text(
                  "A. ${pregunta.respuesta1.enunciado}}",
                  style: GoogleFonts.orbitron(
                    fontSize: 18,
                    color: Colors.white, // Color de texto blanco para contraste
                    // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width *
                  0.75, // Ancho del cuadro de texto
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

              child: ElevatedButton(
                onPressed: () {
                  if (pregunta.respuesta2.correcta) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Route4(respuesta: pregunta.respuesta2)));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Route5(respuesta: pregunta.respuesta2)));
                  }
                },
                child: Text(
                  "B. ${pregunta.respuesta2.enunciado}}",
                  style: GoogleFonts.orbitron(
                    fontSize: 18,
                    color: Colors.white, // Color de texto blanco para contraste
                    // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );

// Para mostrar las cajas sucesivamente

/*


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Boxes One After Another with Delay'),
        ),
        body: DelayedBoxList(),
      ),
    );
  }
}

class DelayedBoxList extends StatefulWidget {
  @override
  _DelayedBoxListState createState() => _DelayedBoxListState();
}

class _DelayedBoxListState extends State<DelayedBoxList> {
  final List<String> boxContents = ['Box 1', 'Box 2', 'Box 3', 'Box 4'];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _displayBoxesWithDelay();
  }

  Future<void> _displayBoxesWithDelay() async {
    for (int i = 0; i < boxContents.length; i++) {
      await Future.delayed(Duration(seconds: 1)); // Adjust the delay time
      setState(() {
        currentIndex = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currentIndex + 1,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            boxContents[index],
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
      },
    );
  }
}


*/

  /*return Positioned(
      bottom: 30, // Separación de la parte inferior
      left: MediaQuery.of(context).size.width * 0.25, // Asumiendo que deseas centrarlo
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.5, // Tomará el 50% del ancho de la pantalla
        decoration: BoxDecoration(
          color: Colors.deepPurple[700], // Color base oscuro para una temática espacial
          borderRadius: BorderRadius.circular(15), // Borde redondeado
          border: Border.all(
            color: Colors.blueAccent, // Color que puede recordar a estrellas o constelaciones
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.5), // Sombra con un tono azul para un efecto 'galáctico'
              spreadRadius: 2,
              blurRadius: 7,
            ),
          ],
        ),
        child: Text(
          "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white, // Color de texto blanco para contraste
            fontFamily: 'Arial', // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
          ),
        ),
      ),
    );*/
}

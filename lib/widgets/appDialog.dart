import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


Widget appDialog(BuildContext context){
  
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
      left: MediaQuery.of(context).size.width * 0.12, // Asumiendo que deseas centrarlo
      child: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width * 0.75, // Tomará el 50% del ancho de la pantalla
        decoration: BoxDecoration(
          color: Colors.transparent, // Color base oscuro para una temática espacial
          borderRadius: BorderRadius.circular(5), // Borde redondeado
          border: Border.all(
            color: Colors.white, // Color que puede recordar a estrellas o constelaciones
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Sombra con un tono azul para un efecto 'galáctico'
              spreadRadius: 2,
              blurRadius: 7,
            ),
          ],
        ),
        child: Text(
          "Before anything, Titan's freezing temperatures need to be addressed. How do we bring warmth?",
          style: GoogleFonts.orbitron(
            fontSize: 24,
            color: Colors.white, // Color de texto blanco para contraste
             // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
          ),
        ),
      ),
    ),
    Positioned(
      bottom: 170, // Separación de la parte inferior
      left: MediaQuery.of(context).size.width * 0.12, // Asumiendo que deseas centrarlo
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.75, // Ancho del cuadro de texto
            decoration: BoxDecoration(
              color: Colors.transparent, // Color base oscuro para una temática espacial
              borderRadius: BorderRadius.circular(5), // Borde redondeado
              border: Border.all(
                color: Colors.white, // Color que puede recordar a estrellas o constelaciones
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Sombra con un tono azul para un efecto 'galáctico'
                  spreadRadius: 2,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Text(
              "A.       Set up orbital mirrors to amplify sunlight",
              style: GoogleFonts.orbitron(
                fontSize: 18,
                color: Colors.white, // Color de texto blanco para contraste
                // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
              ),
            ),
          ),
          SizedBox(height: 20), // Espacio entre los cuadros de texto
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.75, // Ancho del cuadro de texto
            decoration: BoxDecoration(
              color: Colors.transparent, // Color base oscuro para una temática espacial
              borderRadius: BorderRadius.circular(5), // Borde redondeado
              border: Border.all(
                color: Colors.white, // Color que puede recordar a estrellas o constelaciones
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Sombra con un tono azul para un efecto 'galáctico'
                  spreadRadius: 2,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Text(
              "B.       Set up orbital mirrors to amplify sunlight",
              style: GoogleFonts.orbitron(
                fontSize: 18,
                color: Colors.white, // Color de texto blanco para contraste
                // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
              ),
            ),
          ),
        ],
      ),
    ),
    Positioned(
  bottom: 20, // Ajusta la posición del enlace según tus necesidades
  left: 20, // Ajusta la posición del enlace según tus necesidades
  child: InkWell(
    onTap: () {
      launch('https://twitter.com/home?lang=es');
    },
    child: Text(
      "Visita mi perfil en Twitter",
      style: TextStyle(
        fontSize: 16,
        color: Colors.red, // Cambia el color a rojo
        decoration: TextDecoration.underline,
      ),
    ),
  ),
)

  ],
);


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
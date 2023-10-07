import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';


Widget linkURL(BuildContext context, url) {
  return Positioned(
  bottom: 20, // Ajusta la posición del enlace según tus necesidades
  left: 20, // Ajusta la posición del enlace según tus necesidades
  child: InkWell(
    onTap: () {
      launchUrlString('https://twitter.com/home?lang=es');
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
  );  
}
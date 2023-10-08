import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metrovalencia/widgets/AnimateText.dart';
import 'package:metrovalencia/widgets/AnimatedText2.dart';
import 'package:metrovalencia/widgets/InfoWidget.dart';
import 'package:metrovalencia/widgets/linkUrl.dart';


class titanInfo extends StatelessWidget {

  Widget ContainerWithText(String text, Color color, double height) {
  return Container(
    color: color,
    height: height,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget createContainerWithText(
  String text,
  Color color,
  double height,
  TextStyle textStyle,
  Color borderColor,
  double borderWidth,
  double fontSize, 
  ) 
  {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: borderColor ?? Colors.black, // Color de borde (verde por defecto)
          width: borderWidth ?? 2.0, // Ancho de borde (0.0 por defecto, sin borde)
        ),
      ),
      height: height,
      child: Center(
       child: Text(
          text,
          style: GoogleFonts.orbitron(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        
      SliverAppBar(
        pinned: true,
        expandedHeight: 300.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/littleAngel.jpg', // Replace with your image path
            fit: BoxFit.cover, // You can adjust the fit mode as needed
          ),
          title: AnimatedText2Widget(text:'Find out more about Titan!', ),

          ),
      ),
      
      SliverList(
        delegate: SliverChildListDelegate(
          [
            // Widgets apilados uno encima del otro
            createContainerWithText(
            " Facts about Titan",
            Color.fromARGB(255, 0, 28, 69) ?? Colors.blue,
            150,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              40,
              ),
              createContainerWithText(
            "1. Titan is Saturn's largest moon by far.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              22,
              ),
              createContainerWithText(
            "2. Its diameter is 5150 km and it weighs 1.345*10^2 kg.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              22,
              ),
              createContainerWithText(
            "3. The acceleration of gravity on Titan is 1.35 m/s^2.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              22,
              ),
              createContainerWithText(
            "4. Titan is made up of a core of rock, ice and liquid salty water layers and a dense atmosphere.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              22,
              ),
              createContainerWithText(
            "5. The day lasts almost 16 Earth days.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              22,
              ),
              createContainerWithText(
            "6. The atmosphere is composed of 98.4% nitrogen, 1.4% methane and 0.2% hydrogen.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              22,
              ),
              createContainerWithText(
            "7. The average temperature on Titan is -180ºC.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              22,
              ),
                createContainerWithText(
            "8. Dragonfly is a NASA exploration probe, which will send a spacecraft with a dron to Titan, in order to study planetary habitability.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              22,
              ),
            createContainerWithText(
            "Visit NASA's website to learn even more about Titan.",
            Color.fromARGB(255, 0, 28, 69) ?? Colors.blue,
            150,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              40,
              ),

              createContainerWithText(
              "NAASA",
              Colors.blue[900] ?? Colors.blue,
              150,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              2.0,
              22,
              ),
              linkURL(context, 'https://science.nasa.gov/saturn/moons/titan/',
              ), // Llama a la función linkURL aquí
        
            createContainerWithText(
            " About us.",
            Color.fromARGB(255, 0, 28, 69) ?? Colors.blue,
            150,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0,
              40,
              ),
            createContainerWithText(
            "We are a group of students in Valencia who have built this web in NASA International Space Apps Challenge. Sky is not the limit for us.",
            Colors.blue[900] ?? Colors.blue,
            80,
            GoogleFonts.orbitron(),
            Colors.black, // Agrega el color del borde aquí
              2.0, 
              18,
              ),
            Container(
              height: 1000, // Altura deseada para el contenedor de la imagen
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 0, 28, 69) ?? Colors.blue, // Color del borde
                  width: 50.0, // Ancho del borde
                ),
              ),
              child: Image.asset(
                 'assets/theSquad.jpg', // Reemplaza con la ruta de tu imagen en assets
                fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
              ),
            ),
          ],
        ),
      ),
      ]
    );
  }
}
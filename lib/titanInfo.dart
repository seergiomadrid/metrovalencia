import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metrovalencia/widgets/AnimatedText2.dart';
import 'package:url_launcher/url_launcher_string.dart';

class titanInfo extends StatelessWidget {
  Widget ContainerWithText(String text, Color color, double height) {
    return Container(
      color: color,
      height: height,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
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
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: borderColor, // Color de borde (verde por defecto)
          width: borderWidth, // Ancho de borde (0.0 por defecto, sin borde)
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

  Widget linkContainerWithURL(BuildContext context, String text, String url) {
    return InkWell(
      onTap: () {
        launchUrlString(
            url); // Asegúrate de que esta función está implementada correctamente
      },
      child: createContainerWithText(
        text,
        const Color.fromARGB(255, 0, 28, 69),
        150,
        GoogleFonts.orbitron(),
        Colors.black,
        3.0,
        40,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        expandedHeight: 300.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/assetsHubbleLegacyField.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 3, // Esto es el grosor del borde
                  color: Colors.black, // Este es el color del borde
                ),
              ),
            ],
          ),
          title: AnimatedText2Widget(text: 'Find out more about Titan!'),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            // Widgets apilados uno encima del otro
            createContainerWithText(
              " Facts about Titan",
              const Color.fromARGB(255, 0, 28, 69),
              150,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              40,
            ),
            createContainerWithText(
              "1. Titan is Saturn's largest moon by far.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "2. Its diameter is 5150 km and it weighs 1.345*10^2 kg.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "3. The acceleration of gravity on Titan is 1.35 m/s^2.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "4. Titan is made up of a core of rock, ice and liquid salty water layers and a dense atmosphere.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "5. The day lasts almost 16 Earth days.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "6. The atmosphere is composed of 98.4% nitrogen, 1.4% methane and 0.2% hydrogen.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "7. The average temperature on Titan is -180ºC.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            createContainerWithText(
              "8. Dragonfly is a NASA exploration probe, which will send a spacecraft to Titan, in order to study planetary habitability.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              22,
            ),
            linkContainerWithURL(
                context,
                "Click here to go to NASA's website to learn more about Titan",
                'https://science.nasa.gov/saturn/moons/titan/'),
            createContainerWithText(
              " About us.",
              const Color.fromARGB(255, 0, 28, 69),
              150,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              40,
            ),
            createContainerWithText(
              "We are a group of students in Valencia who have built this web in NASA International Space Apps Challenge. Sky is not the limit for us.",
              Colors.blue[900] ?? Colors.blue,
              80,
              GoogleFonts.orbitron(),
              Colors.black, // Agrega el color del borde aquí
              3.0,
              18,
            ),
            Container(
              height: 1000, // Altura deseada para el contenedor de la imagen
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      const Color.fromARGB(255, 0, 28, 69), // Color del borde
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
    ]);
  }
}

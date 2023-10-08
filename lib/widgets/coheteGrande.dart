import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/widgets/ArrowBackGame.dart';
import 'package:metrovalencia/widgets/ArrowForwardGame.dart';

class coheteGrande extends StatelessWidget {
  const coheteGrande({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assetsHubbleLegacyField.png'), // Replace with your image asset path
            fit: BoxFit.cover, // You can adjust the fit mode as needed
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                child: Hero(
                  tag: 'imageCohete',
                  child: Image.asset('assets/cohete.png'),
                ),
              ),
              const SizedBox(height: 600),
              SizedBox(
                height: 400,
                child: Hero(
                  tag: 'imageTierra',
                  child: Image.asset('assets/tierra.png'),
                ),
              ),
            ],
          ),
          // arrowBackGame(context),
          // arrowForwardGame(context, const ThirdRoute())
        ),
        // arrowBackGame(context),
        // arrowForwardGame(context, const ThirdRoute())
      ),
       Positioned(
        bottom: 100,
        left: 0,
        right: 0,
        child: Center(
          child: Text(
            "Let's go!",
            style: GoogleFonts.orbitron(
            fontSize: 40,
            color: Colors.white),
          ),
        ),
      )
    ]);
  }
}



/* child: Text(
                    "A. ${widget.pregunta.respuesta1.enunciado}}",
                    style: GoogleFonts.orbitron(
                      fontSize: 18,
                      color:
                          Colors.white, // Color de texto blanco para contraste
                      // Cambiado a Arial como ejemplo. Deberías escoger y añadir una fuente que te guste.
                    ),*/


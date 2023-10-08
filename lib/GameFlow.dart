import 'package:flutter/material.dart';
import 'package:metrovalencia/Clases/Pregunta.dart';
import 'package:metrovalencia/Clases/Respuesta.dart';
import 'package:metrovalencia/animacion/slide.dart';
import 'package:metrovalencia/widgets/AnimateText.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';
import 'package:metrovalencia/widgets/correctAnswer.dart';
import 'package:metrovalencia/widgets/wrongAnswer.dart';
import 'widgets/ArrowBackGame.dart';
import 'widgets/ArrowForwardGame.dart';
import 'widgets/appDialog.dart';

import 'widgets/Titan.dart';

import 'package:google_fonts/google_fonts.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Stack(children: <Widget>[
        // Widget 1
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ELPERCU_wide_1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        arrowBackGame(context),
        arrowForwardGame(context, const SecondRoute(), false)
      ]),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundPreguntas.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),

      coheteGrande(),
      arrowForwardGame(context, RouteTitan1(), true),
      arrowBackGame(context),
      ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          //Navigator.of(context).push(createRoute(context,));
        },
      ),
      // Center(
      //     child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //       appDialog(context),
      //       arrowBackGame(context),
      //       arrowForwardGame(context, const ThirdRoute())
      //     ]))
    ]));
  }
}



class RouteTitan1 extends StatelessWidget {
  const RouteTitan1({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(
      body: Stack(children: <Widget>[

        // Widget 1
      
        
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundPreguntas.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
// WIdget 2
        Positioned(
        top: 20,
        right: 0.35*screenWidth,
        child: AnimatedTextWidget(text:
          'The surface of Titan is very icy and frigid...'
        ),
      ),
        const titan(path: 'assets/TitanBeginning.jpeg'),

        Positioned(
        bottom: 20,
        right: 0.35*screenWidth,
        child:
        Text(
        'Move on to solve problems and help Titan',
        style: GoogleFonts.orbitron(
                fontSize: 20,
                color: Colors.white,)
      ),
      ),
           
        //arrowBackGame(context),
        //arrowForwardGame(context, const Route4())
      ]),
    );
  }
}




class RouteTitan2 extends StatelessWidget {
  const RouteTitan2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(
      body: Stack(children: <Widget>[

        // Widget 1
      
        
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundPreguntas.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
// WIdget 2
        Positioned(
        top: 20,
        right: 0.2*screenWidth,
        child: AnimatedTextWidget(text:
          'Titan needs energy to address the needs of its newly arrived inhabitants'
        ),
      ),
        const titan(path: 'assets/Titan2.jpeg'),

        Positioned(
        bottom: 20,
        right: 0.35*screenWidth,
        child:
        Text(
        'Move on to solve problems and help Titan',
        style: GoogleFonts.orbitron(
                fontSize: 20,
                color: Colors.white,)
      ),
      ),
           
        //arrowBackGame(context),
        //arrowForwardGame(context, const Route4())
      ]),
    );
  }
}

class RoutePreguntas extends StatelessWidget {

  const RoutePreguntas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        // Widget 1
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundPreguntas.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        appDialog(pregunta: 
            Pregunta(
              enunciado: "enunciado",
              respuesta1: Respuesta(
                  enunciado: "enunciado resp",
                  correcta: true,
                  feedback: "Miguel Sexo SI"),
              respuesta2: Respuesta(
                  enunciado: "enunciado resp",
                  correcta: false,
                  feedback: "Miguel Sexo NO"),
           ),),
           
        //arrowBackGame(context),
        //arrowForwardGame(context, const Route4())
      ]),
    );
  }
}

class RouteRightAnswer extends StatelessWidget {
  final Respuesta respuesta;
  const RouteRightAnswer({super.key, required this.respuesta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Route Right'),
        ),
        body:  Stack(children: <Widget>[
        correctAnswer(respuesta: respuesta),
        arrowBackGame(context),
        arrowForwardGame(context, const RouteTitan2(), true)
        ]
    )
    );
  }
}

class RouteWrongAnswer extends StatelessWidget {
  final Respuesta respuesta;
  const RouteWrongAnswer({super.key, required this.respuesta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Route Wrong'),
        ),
        body:  Stack(children: <Widget>[
        wrongAnswer(respuesta: respuesta),
        arrowBackGame(context),
        arrowForwardGame(context, const RouteTitan2(), true)
        ]
    )
    );
        
  }
}
/*
// Within the `FirstRoute` widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SecondRoute()),
  );
}



// Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}

*/


/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Box Layout'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200, // Adjust the width as needed
                height: 100, // Adjust the height as needed
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Question',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              SizedBox(height: 20), // Add spacing between the boxes
              Container(
                width: 150, // Adjust the width as needed
                height: 60, // Adjust the height as needed
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Answer 1',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 10), // Add spacing between the boxes
              Container(
                width: 150, // Adjust the width as needed
                height: 60, // Adjust the height as needed
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text(
                  'Answer 2',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/
import 'package:flutter/material.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';
import 'widgets/ArrowBackGame.dart';
import 'widgets/ArrowForwardGame.dart';
import 'widgets/appDialog.dart';

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
              image: AssetImage('assets/main_planeta.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        arrowBackGame(context),
        arrowForwardGame(context, const SecondRoute())
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
      arrowForwardGame(context, ThirdRoute()),
      arrowBackGame(context),
      ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FirstRoute()),
          );
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

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
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
        appDialog(context, "Mi pregunta"),
        arrowBackGame(context),
        arrowForwardGame(context, const Route4())
      ]),
    );
  }
}



class Route4 extends StatelessWidget {
  const Route4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route 4'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
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
import 'package:flutter/material.dart';

import 'widgets/ArrowBackGame.dart';
import 'widgets/ArrowForwardGame.dart';

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
          decoration: BoxDecoration(
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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: Stack(children: <Widget>[
          arrowBackGame(context),
          arrowForwardGame(context, const ThirdRoute())
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


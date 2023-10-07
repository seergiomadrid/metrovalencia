import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous page
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {   
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );            
                    },
                ),
              ],
            ),
            Text('Swipe to navigate'),
          ],
        ),
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous page
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {   
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdRoute()),
            );            
                    },
                ),
              ],
            ),
            Text('Swipe to navigate'),
          ],
        ),
      ),
    );
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


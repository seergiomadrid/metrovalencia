import 'package:flutter/material.dart';

import 'widgets/InfoWidget.dart';
import 'widgets/AnimateText.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/main_planeta.jpg', // Replace with your image path
              fit: BoxFit.cover, // You can adjust the fit mode as needed
            ),
            title: const Text(
              'Ready to explore the unknown? Dive deeper into the mysteries of Titan City and NASA!',
              style: TextStyle(
                color: Color.fromARGB(146, 0, 0, 0),
                fontSize: 25,
              ),
            ),
          ),
        ),
        SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildListDelegate([
              MaterialApp(
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text('UrlLauncher'),
                  ),
                  body: Center(
                    child: InkWell(
                        child: const Text('Open Browser'),
                        onTap: () => 'https://www.nasa.gov/hrp'),
                  ),
                ),
              ),
              Info(context, 'https://www.nasa.gov/hrp'),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (0 % 9)],
                child: const Text('Item 0'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (1 % 9)],
                child: const Text('Item 1'),
              ),
              AnimatedTextWidget(
                text: "Hallo wie geht es",
              )
            ]))
      ],
    );
  }
}

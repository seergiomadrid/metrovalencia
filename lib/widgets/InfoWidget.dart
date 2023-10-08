import 'package:flutter/material.dart';

Widget Info(BuildContext context, url) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('UrlLauncher Example'),
      ),
      body: const Center(
        child: UrlLauncherWidget(),
      ),
    ),
  );
}

class UrlLauncherWidget extends StatelessWidget {
  final String url = 'https://www.nasa.gov/hrp';

  const UrlLauncherWidget({super.key}); // Replace with your URL

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Text(
        'Open Browser',
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
      onTap: () => url,
    );
  }
}

/*
Widget Info(BuildContext context, link) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('UrlLauncher'),
        ),
        body: new Center(
          child: new InkWell(
              child: new Text('Open Browser'),
              onTap: () => link
          ),
        ),
      ),
    );
  }
*/
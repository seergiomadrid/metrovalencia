import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget Info(BuildContext context, url) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('UrlLauncher Example'),
      ),
      body: Center(
        child: UrlLauncherWidget(),
      ),
    ),
  );
}

class UrlLauncherWidget extends StatelessWidget {
  final String url = 'https://www.nasa.gov/hrp'; // Replace with your URL

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
// HomeView.dart
import 'package:flutter/material.dart';
import 'package:metrovalencia/widgets/appDialog.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assetsHubbleLegacyField.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

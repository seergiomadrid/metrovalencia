// HomeView.dart
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets\HubbleLegacyField.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class mainMenuFalso extends StatefulWidget {
  const mainMenuFalso({super.key});

  @override
  State<mainMenuFalso> createState() => _mainMenuFalsoState();
}

class _mainMenuFalsoState extends State<mainMenuFalso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/assetsHubbleLegacyField.png'), // Replace with your image asset path
          fit: BoxFit.cover, // You can adjust the fit mode as needed
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 500,
                child: Image.asset('assets/tierra.png'),
              ),
              SizedBox(
                height: 150,
                child: Image.asset('assets/cohete.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

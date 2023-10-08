import 'package:flutter/material.dart';
import 'package:metrovalencia/GameFlow.dart';
import 'package:metrovalencia/widgets/coheteGrande.dart';

class mainMenu extends StatefulWidget {
  const mainMenu({super.key});

  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
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
                child: Hero(
                  tag: 'imageTierra',
                  child: Image.asset('assets/tierra.png'),
                ),
              ),
              SizedBox(
                height: 150,
                child: Hero(
                  tag: 'imageCohete',
                  child: Image.asset('assets/cohete.png'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget coheteGrande(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/1.jpg'), // Replace with your image asset path
        fit: BoxFit.cover, // You can adjust the fit mode as needed
      ),
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: Hero(
              tag: 'imageCohete',
              child: Image.asset('assets/cohete.png'),
            ),
          ),
          const SizedBox(height: 600),
          SizedBox(
            height: 400,
            child: Hero(
              tag: 'imageTierra',
              child: Image.asset('assets/tierra.png'),
            ),
          ),
        ],
      ),
    ),
  );
}

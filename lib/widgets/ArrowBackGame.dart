


import 'package:flutter/material.dart';

Widget arrowBackGame(BuildContext context) {
  return Positioned(
            top: 0,
              left: 0,
              bottom: 0,
            child:  Container(
                color: Colors.black.withOpacity(0.5), // Adjust the opacity here
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back, size: 50, color: const Color.fromARGB(255, 202, 153, 135)),
                          onPressed: () {
                            Navigator.pop(context); // Navigate back to the previous page
                          },
                        ),
                        SizedBox(width: 20),
                        // Add more widgets to the Row if needed
                      ],
                    ),
                    // Add more widgets to the transparent Column
                  ],
                ),
              ),
      
      );
}
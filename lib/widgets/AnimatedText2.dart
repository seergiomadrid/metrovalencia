import 'package:flutter/material.dart';

import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class AnimatedText2Widget extends StatefulWidget {
  final String text;
  AnimatedText2Widget({required this.text});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedText2Widget> {
  int textIndex = 0;
  late List<String> letters;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    letters = widget.text.split('');
    animateText();
  }

  void animateText() {
    const duration = Duration(milliseconds: 100);

    timer = Timer.periodic(duration, (Timer timer) {
      if (textIndex < letters.length) {
        setState(() {
          textIndex++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visibleLetters = letters.take(textIndex).join();

    return Padding(
      padding: const EdgeInsets.only(
          top: 200.0), // Agrega espacio superior de 100.0 puntos
      child: Center(
        child: Text(
          visibleLetters,
          style: GoogleFonts.orbitron(
            fontSize: 44,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

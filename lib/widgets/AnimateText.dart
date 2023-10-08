import 'package:flutter/material.dart';

import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class AnimatedTextWidget extends StatefulWidget {
  String text;
  AnimatedTextWidget({super.key, required this.text});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();

  // Nuevo método para crear una clave global para el widget
  static final GlobalKey<_AnimatedTextWidgetState> _animatedTextKey =
      GlobalKey<_AnimatedTextWidgetState>();

  // Nuevo método para actualizar el texto desde fuera de la clase
  void updateText(String newText) {
    _animatedTextKey.currentState?.updateText(newText);
  }
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
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

  // Método para actualizar el texto desde fuera de la clase
  void updateText(String newText) {
    setState(() {
      widget.text = newText;
      letters = widget.text.split('');
      textIndex = 0;
      animateText();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String visibleLetters = letters.take(textIndex).join();

    return Center(
      child: Text(visibleLetters,
          style: GoogleFonts.orbitron(
            fontSize: 20,
            color: Colors.white,
          )),
    );
  }
}

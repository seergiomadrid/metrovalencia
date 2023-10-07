
import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter/material.dart';



class AnimatedTextWidget extends StatefulWidget {
  final String text;
  AnimatedTextWidget({required this.text});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
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
    const duration = const Duration(milliseconds: 100);

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

    return Center(
      child: Text(
        visibleLetters,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

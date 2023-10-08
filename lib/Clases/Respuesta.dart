import 'package:flutter/material.dart';

class Respuesta {
  String enunciado;
  bool correcta = true;
  String feedback = '';
  StatelessWidget nextPage;

  Respuesta({
    required this.enunciado,
    required this.correcta,
    required this.feedback,
    required this.nextPage,
  });
}

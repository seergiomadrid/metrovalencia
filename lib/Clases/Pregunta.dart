import 'Respuesta.dart';

class Pregunta {
  String enunciado;
  Respuesta? respuesta1;
  Respuesta? respuesta2;

  Pregunta({
    required this.enunciado,
    this.respuesta1,
    this.respuesta2,
  });
}

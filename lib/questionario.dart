import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final String label;
  final List<Map<String, Object>> respostas;
  final void Function(int) responder;

  Questionario(
      {@required this.label,
      @required this.respostas,
      @required this.responder});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(label),
        ...respostas.map((resp) {
          return Resposta(resp['text'], () => responder(resp['score']));
        }).toList(),
      ],
    );
  }
}

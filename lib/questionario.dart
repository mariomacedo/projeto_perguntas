import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final String label;
  final List<String> respostas;
  final void Function() responder;

  Questionario(this.label, this.respostas, this.responder);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(label),
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}

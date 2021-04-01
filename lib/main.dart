import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _selected = 0;
  final _perguntas = const [
    {
      'label': 'Qual é a sua cor favorita?',
      'opc': ['Preto', 'Amarelo', 'Vermelhor', 'Branco']
    },
    {
      'label': 'Qual é o seu animal favorito',
      'opc': ['Limão', 'Tequila', 'Tobi', 'Fredy']
    },
    {
      'label': 'Qual é o seu instrutor favorito?',
      'opc': ['Maria', 'João', 'Leo', 'Pedro']
    },
  ];

  void _responder() {
    if (isSelected) {
      setState(() {
        _selected++;
      });
    }

    print('Pergunta Respondida!');
  }

  bool get isSelected {
    return _selected < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> _respostas = isSelected ? _perguntas[_selected]['opc'] : null;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas"),
            ),
            body: isSelected
                ? Questionario(
                    _perguntas[_selected]['label'], _respostas, _responder)
                : Resultado("Parabéns Campeão!")));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}

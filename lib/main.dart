import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _selected = 0;
  var _totalScore = 0;
  final _perguntas = const [
    {
      'label': 'Qual é a sua cor favorita?',
      'opc': [
        {'score': 10, 'text': 'Preto'},
        {'score': 15, 'text': 'Amarelo'},
        {'score': 20, 'text': 'Vermelho'},
        {'score': 25, 'text': 'Branco'},
      ]
    },
    {
      'label': 'Qual é o seu animal favorito',
      'opc': [
        {'score': 10, 'text': 'Limão'},
        {'score': 15, 'text': 'Tequila'},
        {'score': 20, 'text': 'Tobi'},
        {'score': 25, 'text': 'Fredy'},
      ]
    },
    {
      'label': 'Qual é o seu instrutor favorito?',
      'opc': [
        {'score': 25, 'text': 'Maria'},
        {'score': 50, 'text': 'João'},
        {'score': 75, 'text': 'Leo'},
        {'score': 100, 'text': 'Pedro'},
      ]
    },
  ];

  void _responder(int score) {
    if (isSelected) {
      setState(() {
        _selected++;
        _totalScore += score;
      });
    }

    print(_totalScore);
  }

  bool get isSelected {
    return _selected < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> _respostas =
        isSelected ? _perguntas[_selected]['opc'] : null;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas"),
            ),
            body: isSelected
                ? Questionario(
                    label: _perguntas[_selected]['label'],
                    respostas: _respostas,
                    responder: _responder)
                : Resultado(_totalScore)));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}

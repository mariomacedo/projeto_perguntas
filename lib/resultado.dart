import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalScore;
  final void Function() restartGame;

  Resultado(this.totalScore, this.restartGame);

  String get message {
    if (totalScore < 80) {
      return "Jóia";
    } else if (totalScore < 125) {
      return "Topzera!";
    } else {
      return "Malandro! Brilhou!!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            message,
            style: TextStyle(fontSize: 32),
          ),
        ),
        TextButton(
            onPressed: restartGame,
            child: Text(
              'Reiniciar',
              style: TextStyle(
                  color: Color.fromRGBO(21, 21, 21, 100), fontSize: 18),
            ))
      ],
    );
  }
}

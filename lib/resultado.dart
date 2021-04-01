import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalScore;

  Resultado(this.totalScore);

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
    return Center(
      child: Text(
        message,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}

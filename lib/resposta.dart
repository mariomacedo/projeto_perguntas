import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String label;
  final void Function() fnOnPressed;

  Resposta(this.label, this.fnOnPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: fnOnPressed,
          child: Text(label),
        ));
  }
}

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String label;

  Resultado(this.label);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}

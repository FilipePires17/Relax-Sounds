import 'package:flutter/material.dart';

class TextoBotao extends StatelessWidget {
  final String texto;

  TextoBotao(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          texto,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => {},
      ),
    );
  }
}

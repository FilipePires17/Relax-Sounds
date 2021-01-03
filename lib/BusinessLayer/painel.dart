import 'package:flutter/material.dart';

class Painel extends StatelessWidget {
  final String imagem;

  Painel(this.imagem);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imagem),
          ),
        ),
        child: RaisedButton(
          color: Color.fromRGBO(256, 256, 256, 0),
          onPressed: () => {},
        ),
      ),
    );
  }
}

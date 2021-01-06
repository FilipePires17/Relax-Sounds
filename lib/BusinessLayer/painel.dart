import 'package:flutter/material.dart';
import 'package:relax_sounds/pages/player.dart';

class Painel extends StatelessWidget {
  final String imagem;

  Player playerData;

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
            image: AssetImage('assets/' + imagem + '.jpg'),
          ),
        ),
        child: RaisedButton(
          elevation: 0.0,
          color: Color.fromRGBO(256, 256, 256, 0),
          onPressed: () {},
        ),
      ),
    );
  }
}

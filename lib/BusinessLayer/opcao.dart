import 'package:flutter/material.dart';
import '../pages/player.dart';
//import 'package:relax_sounds/BusinessLayer/painel.dart';
//import 'package:relax_sounds/BusinessLayer/textoBotao.dart';

class Opcao extends StatelessWidget {
  final String imagem;
  final String texto;

  Opcao(
    this.imagem,
    this.texto,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Player()));
              },
            ),
          ),
        ),
        Container(
          child: TextButton(
            child: Text(
              texto,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

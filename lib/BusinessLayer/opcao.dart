import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/painel.dart';
import 'package:relax_sounds/BusinessLayer/textoBotao.dart';

class Opcao extends StatelessWidget {
  final String imagem;
  final String texto;

  Opcao({@required this.imagem, @required this.texto});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Painel("lib/assets/" + imagem), TextoBotao(texto)],
    );
  }
}

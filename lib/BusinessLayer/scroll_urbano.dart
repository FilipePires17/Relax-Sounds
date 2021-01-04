import 'package:flutter/material.dart';
import 'opcao.dart';

class ScrollUrbano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao(imagem: "urbano_bg1.jpg", texto: "Carros"),
          Opcao(imagem: "urbano_bg2.jpg", texto: "Conversa"),
          Opcao(imagem: "urbano_bg3.jpg", texto: "Cidade"),
          Opcao(imagem: "urbano_bg4.jpg", texto: "Pessoas"),
        ],
      ),
    );
  }
}

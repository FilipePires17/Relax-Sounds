import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/opcao.dart';

class ScrollChuva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao(imagem: "chuva_bg4.jpg", texto: "Tempestade"),
          Opcao(imagem: "chuva_bg2.jpg", texto: "Na rua"),
          Opcao(imagem: "chuva_bg3.jpg", texto: "Calminha"),
          Opcao(imagem: "chuva_bg.jpg", texto: "Em casa"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'opcao.dart';

class ScrollMar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Opcao(imagem: "mar_bg1.jpg", texto: "Praia"),
          Opcao(imagem: "mar_bg2.jpg", texto: "Onda"),
          Opcao(imagem: "mar_bg3.jpg", texto: "Tempestuoso"),
          Opcao(imagem: "mar_bg4.jpg", texto: "Preda"),
        ]));
  }
}

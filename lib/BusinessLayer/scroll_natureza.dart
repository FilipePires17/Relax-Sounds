import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/opcao.dart';

class ScrollNatureza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao(imagem: "natureza_bg1.jpg", texto: "Passarinhos"),
          Opcao(imagem: "natureza_bg2.jpg", texto: "Floresta"),
          Opcao(imagem: "natureza_bg3.jpg", texto: "Cachoeira"),
          Opcao(imagem: "natureza_bg4.jpg", texto: "Passarinho"),
        ],
      ),
    );
  }
}

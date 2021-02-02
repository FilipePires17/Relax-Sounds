import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/Objects/opcao.dart';

class ScrollUrbano extends StatelessWidget {
  ScrollUrbano();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("urbano_bg1", "Carros"),
          Opcao("urbano_bg2", "Conversa"),
          Opcao("urbano_bg3", "Cidade"),
          Opcao("urbano_bg4", "Pessoas"),
        ],
      ),
    );
  }
}

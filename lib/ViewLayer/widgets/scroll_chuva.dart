import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/Objects/opcao.dart';

class ScrollChuva extends StatelessWidget {
  ScrollChuva();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("chuva_bg4", "Tempestade"),
          Opcao("chuva_bg2", "Na rua"),
          Opcao("chuva_bg3", "Calminha"),
          Opcao("chuva_bg", "Em casa"),
        ],
      ),
    );
  }
}

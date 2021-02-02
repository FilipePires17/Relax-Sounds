import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/Objects/opcao.dart';

class ScrollMar extends StatelessWidget {
  ScrollMar();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Opcao("mar_bg1", "Praia"),
          Opcao("mar_bg2", "Onda"),
          Opcao("mar_bg3", "Tempestuoso"),
          Opcao("mar_bg4", "Pedra"),
        ]));
  }
}

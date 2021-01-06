import 'package:flutter/material.dart';
import 'package:relax_sounds/pages/player.dart';

import 'opcao.dart';

class ScrollMar extends StatelessWidget {
  final Player playerData;
  ScrollMar(this.playerData);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Opcao("mar_bg1", "Praia", playerData),
          Opcao("mar_bg2", "Onda", playerData),
          Opcao("mar_bg3", "Tempestuoso", playerData),
          Opcao("mar_bg4", "Pedra", playerData),
        ]));
  }
}

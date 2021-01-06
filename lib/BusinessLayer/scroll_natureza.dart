import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/opcao.dart';
import 'package:relax_sounds/pages/player.dart';

class ScrollNatureza extends StatelessWidget {
  final Player playerData;
  ScrollNatureza(this.playerData);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("natureza_bg1", "Passarinhos", playerData),
          Opcao("natureza_bg2", "Floresta", playerData),
          Opcao("natureza_bg3", "Cachoeira", playerData),
          Opcao("natureza_bg4", "Passarinho", playerData),
        ],
      ),
    );
  }
}

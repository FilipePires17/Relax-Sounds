import 'package:flutter/material.dart';
import 'package:relax_sounds/pages/player.dart';
import 'opcao.dart';

class ScrollUrbano extends StatelessWidget {
  final Player playerData;
  ScrollUrbano(this.playerData);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("urbano_bg1", "Carros", playerData),
          Opcao("urbano_bg2", "Conversa", playerData),
          Opcao("urbano_bg3", "Cidade", playerData),
          Opcao("urbano_bg4", "Pessoas", playerData),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/opcao.dart';
import 'package:relax_sounds/pages/player.dart';

class ScrollChuva extends StatelessWidget {
  final Player playerData;
  ScrollChuva(this.playerData);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("chuva_bg4", "Tempestade", playerData),
          Opcao("chuva_bg2", "Na rua", playerData),
          Opcao("chuva_bg3", "Calminha", playerData),
          Opcao("chuva_bg", "Em casa", playerData),
        ],
      ),
    );
  }
}

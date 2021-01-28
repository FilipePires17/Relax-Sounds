import 'package:flutter/material.dart';
import 'package:relax_sounds/BusinessLayer/opcao.dart';

class ScrollNatureza extends StatelessWidget {
  ScrollNatureza();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Opcao("natureza_bg1", "Passarinhos"),
          Opcao("natureza_bg2", "Floresta"),
          Opcao("natureza_bg3", "Cachoeira"),
          Opcao("natureza_bg4", "Passarinho"),
        ],
      ),
    );
  }
}

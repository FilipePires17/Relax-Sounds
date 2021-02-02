import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../BusinessLogicLayer/Objects/Player.dart';

Widget playButton() {
  Player player = Player();
  return IconButton(
    padding: EdgeInsets.all(0),
    icon: (true)
        ? Icon(
            Icons.pause,
            color: Colors.pink[200],
            size: 50.0,
          )
        : Icon(
            Icons.play_arrow,
            color: Colors.pink[200],
            size: 50.0,
          ),
    onPressed: () {
      player.cache.play("chuva_audio3.wav");
    },
  );
}

Widget timer() {
  return IconButton(
    icon: Icon(
      Icons.watch_rounded,
      size: 50,
    ),
    onPressed: () {},
  );
}

Widget controleDeReproducao() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: 50,
      ),
      playButton(),
    ],
  );
}

Widget content() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.green[100],
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Image.asset("assets/image/mar_bg2.jpg"),
        ),
      ),
      Container(
        color: Colors.yellow[100],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text("Title"),
        ),
      ),
      Container(
        color: Colors.blue[200],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: controleDeReproducao(),
        ),
      )
    ],
  );
}

Widget body() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: content(),
      ),
    ),
  );
}

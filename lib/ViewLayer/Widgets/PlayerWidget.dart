import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../BusinessLogicLayer/Resources/globalObjects.dart';

class PlayButton extends StatefulWidget {
  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  Icon playBtn = Icon(
    Icons.play_arrow,
    color: Colors.pink[200],
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 50.0,
      padding: EdgeInsets.all(0),
      onPressed: () {
        if (!player.getIsPlaying()) {
          setState(() {
            playBtn = Icon(
              Icons.pause,
              color: Colors.pink[200],
              size: 50.0,
            );
            player.cache.play("chuva_audio3.wav");
            player.setIsPlaying();
          });
        } else {
          setState(() {
            playBtn = Icon(
              Icons.play_arrow,
              color: Colors.pink[200],
              size: 50.0,
            );
            player.audioPlayer.stop();
            player.setIsPlaying();
          });
        }
      },
      icon: playBtn,
    );
  }
}

Widget timer() {
  return IconButton(
    icon: Icon(
      Icons.watch_rounded,
      size: 50.0,
    ),
    onPressed: () {},
  );
}

Widget controleDeReproducao() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: 50.0,
        height: 50.0,
      ),
      PlayButton(),
      timer(),
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

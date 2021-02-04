

import 'package:flutter/material.dart';
import '../Widgets/PlayerWidget.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';
import '../../BusinessLogicLayer/FunctionalRequirements/PlayerFR.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  /* AudioPlayer player = AudioPlayer();  //add this
  AudioCache cache = new AudioCache(); */

  PlayerFR playerFR = PlayerFR();

  @override
  void initState() {
    super.initState();
  }

 /*  openingActions() async { //add this
    player = await cache.play('song/teste.mp3'); //add this
  }  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relax Sound"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
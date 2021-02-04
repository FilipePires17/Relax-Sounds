import 'package:flutter/material.dart';
import '../Widgets/PlayerWidget.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
//import '../../BusinessLogicLayer/FunctionalRequirements/PlayerFR.dart';

class PlayerPage extends StatefulWidget {
  final Map _data;

  PlayerPage(this._data);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  AudioPlayer audioPlayer = AudioPlayer();  //add this
  AudioCache audioCache = new AudioCache();

  openingActions() async { //add this
    audioPlayer = await audioCache.play('song/teste.mp3'); //add this
    Future.delayed(Duration(seconds: 5), () {
      audioPlayer.stop();
    });
  } 

  @override
  Widget build(BuildContext context) {
    openingActions();
    return Scaffold(
      appBar: AppBar(
        title: Text("Relax Sound"),
        centerTitle: true,
      ),
      body: Body(widget._data),
    );
  }
}
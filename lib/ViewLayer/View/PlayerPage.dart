import 'package:flutter/material.dart';
import '../Widgets/PlayerWidget.dart';
import '../../BusinessLogicLayer/Resources/globalObjects.dart';
//import '../../BusinessLogicLayer/FunctionalRequirements/PlayerFR.dart';

class PlayerPage extends StatefulWidget {
  final Map _data;

  PlayerPage(this._data);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  openingActions() async {
    //add this
    player.audioPlayer =
        await player.audioCache.play('song/teste.mp3'); //add this
    Future.delayed(Duration(seconds: 5), () {
      player.audioPlayer.stop();
    });
  }

  @override
  Widget build(BuildContext context) {
    openingActions();
    return Scaffold(
      body: Body(widget._data),
    );
  }
}

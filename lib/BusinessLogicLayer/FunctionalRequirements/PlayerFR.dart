import 'package:flutter/material.dart';
import '../Objects/Player.dart';

class PlayerFR{
  bool _isPlaying;
  //Player _player;

  PlayerFR(){
    _isPlaying = false;
    //_player = Player();
  }

  Future play(url) async{
    /* int result = await _player.play(url);
    if(result == 1){
      print("success");
    } */
  }

  bool isPlaying(){
    return _isPlaying;
  }
}
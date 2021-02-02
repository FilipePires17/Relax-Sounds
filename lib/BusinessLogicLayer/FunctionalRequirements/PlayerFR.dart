import 'package:flutter/material.dart';
import '../Objects/Player.dart';

class PlayerFR {
  bool _isPlaying;
  Player _player;

  PlayerFR() {
    _isPlaying = false;
    _player = Player();
  }

  bool isPlaying() {
    return _isPlaying;
  }
}

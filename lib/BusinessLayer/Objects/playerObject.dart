import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Widget Player() {
  AudioPlayer player = AudioPlayer();
  AudioCache cache = AudioCache(fixedPlayer: player);
  bool isPlaying = false;
  String nomeAudio;

  void play(String nomeAudio) async {
    if (!isPlaying) {
      cache.play(nomeAudio);
      isPlaying = true;
      return;
    }
    cache.play(nomeAudio);
    return;
  }
}

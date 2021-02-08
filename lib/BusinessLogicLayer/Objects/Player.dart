import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Player {
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  bool isPlaying;

  Player() {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    isPlaying = false;
  }

  void setIsPlaying() {
    isPlaying = !isPlaying;
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Player {
  AudioPlayer audioPlayer;
  AudioCache cache;
  bool isPlaying;

  Player() {
    audioPlayer = AudioPlayer();
    cache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    isPlaying = false;
  }

  bool getIsPlaying() {
    return isPlaying;
  }

  void setIsPlaying() {
    if (isPlaying) {
      isPlaying = false;
    } else
      isPlaying = true;
  }
}

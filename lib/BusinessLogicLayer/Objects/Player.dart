import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Player {
  AudioPlayer audioPlayer;
  AudioCache cache;

  Player() {
    audioPlayer = AudioPlayer();
    cache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }
}

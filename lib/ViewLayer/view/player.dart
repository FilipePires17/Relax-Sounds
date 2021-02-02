import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  String _imagem = "chuva_bg";
  String audio = "chuva_audio3.wav";
  bool _isPlaying = true;
  double _currentSliderValue = 0;
  IconData playButton = Icons.pause;
  AudioPlayer _player;
  AudioCache cache;

  set imagem(String _imagem) {
    this._imagem = _imagem;
  }

  set isPlaying(bool _isPlaying) {
    this._isPlaying = _isPlaying;
  }

  bool get isPlaying {
    return _isPlaying;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/" + _imagem + '.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 48,
                ),
                IconButton(
                  iconSize: 90,
                  icon: Icon(playButton),
                  onPressed: () {
                    if (isPlaying) {
                      setState(() {
                        _player.pause();
                        isPlaying = false;
                        playButton = Icons.play_arrow;
                      });
                    } else {
                      setState(() {
                        cache.play(audio);
                        isPlaying = true;
                        playButton = Icons.pause;
                      });
                    }
                  },
                ),
                IconButton(icon: Icon(Icons.access_time), onPressed: () {}),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 200,
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _player.setVolume(value * 0.01);
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

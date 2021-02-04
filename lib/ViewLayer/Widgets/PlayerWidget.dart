import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../BusinessLogicLayer/Resources/globalObjects.dart';

class PlayerBar extends StatefulWidget {
  @override
  _PlayerBarState createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar> {
  bool _isPlaying = false;

  Icon playBtn;

  void setIsPlaying() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.refresh,
              color: Colors.pink[200],
              size: 35.0,
            ),
            onPressed: null),
        IconButton(
          iconSize: 50.0,
          padding: EdgeInsets.all(0),
          onPressed: () {
            if (!player.getIsPlaying()) {
              setState(() {
                playBtn = Icon(
                  Icons.pause,
                  color: Colors.pink[200],
                  size: 50.0,
                );
                player.audioCache.play("chuva_audio3.wav");
                player.setIsPlaying();
              });
            } else {
              setState(() {
                playBtn = Icon(
                  Icons.play_arrow,
                  color: Colors.pink[200],
                  size: 50.0,
                );
                player.audioPlayer.stop();
                player.setIsPlaying();
              });
            }
          },
          icon: playBtn,
        ),
        IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.access_time,
              color: Colors.pink[200],
              size: 35.0,
            ),
            onPressed: null),
      ],
    );
  }
}

class VolumeBar extends StatefulWidget {
  @override
  _VolumeBarState createState() => _VolumeBarState();
}

class _VolumeBarState extends State<VolumeBar> {
  double _currentVol = 0;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Icon(
        Icons.volume_mute,
        color: Colors.blue[200],
        size: 20.0,
      ),
    ]);
  }
}

class Body extends StatelessWidget {
  final Map _data;

  Body(this._data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                color: Colors.green[100],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Image.asset(
                    "assets/image/" + _data['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.yellow[100],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text("Title"),
                ),
              ),
              Container(
                color: Colors.blue[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: PlayerBar(),
                ),
              ),
              Container(
                color: Colors.red[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: VolumeBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

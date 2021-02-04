import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class PlayerBar extends StatefulWidget {
  @override
  _PlayerBarState createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar> {
  bool _isPlaying = false;

  bool _getIsPlaying(){
    return _isPlaying;
  }
  
  void setIsPlaying(){
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
            size: 40.0,
          ), 
          onPressed: null
        ),
        IconButton(
            padding: EdgeInsets.all(0),
            icon: (_getIsPlaying()) 
              ? Icon(
                  Icons.pause,
                  color: Colors.pink[200],
                  size: 50.0,
                )
              : Icon(
                  Icons.play_arrow,
                  color: Colors.pink[200],
                  size: 50.0,
              ),
            onPressed: () {
              setIsPlaying();
            },
        ),
        IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            Icons.access_time,
            color: Colors.pink[200],
            size: 40.0,
          ), 
          onPressed: null
        ),
      ],
    );
  }
}

class VolumeBar extends StatefulWidget {
  @override
  _VolumeBarState createState() => _VolumeBarState();
}

class _VolumeBarState extends State<VolumeBar> {
  double _value = 1;

  void setValue(value){
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.volume_mute,
          color: Colors.blue[200],
          size: 20.0,
        ),
        Expanded(
          child: Slider.adaptive(
            value: _value,
            max: 10,
            onChanged: (value){
              setValue(value);
            },
          ),
        ),
        Icon(
          Icons.volume_up,
          color: Colors.blue[200],
          size: 20.0,
        ),
      ],
    );
  }
}


class Body extends StatelessWidget {
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
                color: Colors.green[100],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Image.asset("assets/image/mar_bg2.jpg"),
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
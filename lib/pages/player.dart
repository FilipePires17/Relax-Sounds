import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final String imagem;
  final String audio;

  Player(this.imagem, this.audio);

  @override
  _PlayerState createState() => _PlayerState(imagem, audio);
}

class _PlayerState extends State<Player> {
  final String imagem;
  final String audio;

  _PlayerState(this.imagem, this.audio);

  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/" + 'chuva_bg2.jpg'),
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
                  icon: Icon(Icons.pause),
                  onPressed: () => {},
                ),
                IconButton(icon: Icon(Icons.access_time), onPressed: () => {}),
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

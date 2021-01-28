import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';

/* Organizar as pastas, organizar instancias, alterar nomes, melhorar o codigo */

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer player;
  AudioCache cache;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.LOOP);
    cache = AudioCache(fixedPlayer: player);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(player, cache),
    );
  }
}

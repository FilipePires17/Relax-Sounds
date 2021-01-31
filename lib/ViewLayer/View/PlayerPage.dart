import 'package:flutter/material.dart';
import '../Widgets/PlayerWidget.dart';
//import '../../BusinessLogicLayer/FunctionalRequirements/PlayerFR.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  //PlayerFR playerFR = PlayerFR();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relax Sound"),
        centerTitle: true,
      ),
      body: body(),
    );
  }
}
import 'package:flutter/material.dart';
import '../Widgets/HomeWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relax Sound"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

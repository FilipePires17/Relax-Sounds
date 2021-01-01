import 'package:flutter/material.dart';
import '../BusinessLayer/button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Button(),
          ],
        ),
      ),
    );
  }
}

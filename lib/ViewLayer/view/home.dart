import '../../BusinessLayer/Objects/playerObject.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:relax_sounds/ViewLayer/widgets/scroll_chuva.dart';
import 'package:relax_sounds/ViewLayer/widgets/scroll_mar.dart';
import 'package:relax_sounds/ViewLayer/widgets/scroll_natureza.dart';
import 'package:relax_sounds/ViewLayer/widgets/scroll_urbano.dart';

class Home extends StatefulWidget {
  Home();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[400], Colors.indigo[900]])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90.0, bottom: 50.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Relax Sounds",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chuva",
                          style: TextStyle(fontSize: 28.0),
                        ),
                        ScrollChuva(),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Natureza",
                          style: TextStyle(fontSize: 28.0),
                        ),
                        ScrollNatureza(),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Urbano",
                          style: TextStyle(fontSize: 28.0),
                        ),
                        ScrollUrbano(),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Mar",
                          style: TextStyle(fontSize: 28.0),
                        ),
                        ScrollMar(),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:relax_sounds/BusinessLayer/painel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.teal[300],
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple[50])),
      ),
      home: Scaffold(
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90.0, bottom: 50.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Relax Sounds",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                      Row(
                        children: [
                          Painel(),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}

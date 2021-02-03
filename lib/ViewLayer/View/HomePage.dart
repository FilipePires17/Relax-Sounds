import 'package:flutter/material.dart';
import '../Widgets/HomeWidget.dart';
import '../../BusinessLogicLayer/FunctionalRequirements/HomeFR.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeFR homeFR = HomeFR();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: homeFR.getdata(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return Container(
                child: Center(
                  child: Text("Waiting..."),
                ),
              );
            default:
              if (snapshot.hasError) {
                return Container(
                  child: Center(
                    child: Text("Error"),
                  ),
                );
              } else {
                return Container(
                  child: body(context, snapshot),
                );
              }
          }
        });
  }
}

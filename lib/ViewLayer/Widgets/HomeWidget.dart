import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relax_sounds/ViewLayer/View/PlayerPage.dart';
import '../../BusinessLogicLayer/FunctionalRequirements/HomeFR.dart';


class Objects extends StatelessWidget {
  final List _data;

  Objects(this._data);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _data.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => PlayerPage(_data[index]),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 110,
                    width: 150,
                    child: Image.asset(
                      "assets/image/" + _data[index]['image'], 
                      fit: BoxFit.cover,
                    )
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: Text("Teste1"),
                  )
                ],
              ),
          ),
        );
      }
    );
  }
}

class Content extends StatelessWidget {
  final Map _data;

  Content(this._data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Container(
                height: 200,
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      color: Colors.yellow,
                      child: Text(
                        _data['$index']['topic'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: Objects(_data['$index']['info']),
                    ),
                  ],
                ),
            ),
          );
        }
      ),
    );
  }
}


class Body extends StatelessWidget {
  HomeFR homeFR = HomeFR();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Map>(
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
              if (snapshot.hasError){
                return Container(
                  child: Center(
                    child: Text("Error"),
                  ),
                );
              }
              else{
                return Container(
                    child: Content(snapshot.data),
                );
              }
          }
        }
      ),
    );
  }
}
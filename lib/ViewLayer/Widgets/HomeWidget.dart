import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget option(context, info) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
    height: 150,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 110,
            width: 150,
            child: GestureDetector(
              child: Image.asset(
                "assets/image/" + info['image'],
                fit: BoxFit.cover,
              ),
              onTap: () {},
            )),
        Container(
          height: 40,
          width: 150,
          child: GestureDetector(
            child: Text(info['name']),
            onTap: () {},
          ),
        )
      ],
    ),
  );
}

Widget object(context, snapshot, indexObject) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 40,
        color: Colors.yellow,
        child: Text(
          snapshot.data['$indexObject']['topic'],
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
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data['$indexObject']['info'].length,
            itemBuilder: (context, index) {
              return option(
                  context, snapshot.data["$indexObject"]['info'][index]);
            }),
      )
    ],
  );
}

Widget body(context, snapshot) {
  return Column(
    children: [
      Container(
        child: Text("Relax Sounds"), //TODO melhorar isso pq pelo amor né
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  height: 200,
                  color: Colors.blue,
                  child: object(context, snapshot, index),
                ),
              );
            }),
      ),
    ],
  );
}

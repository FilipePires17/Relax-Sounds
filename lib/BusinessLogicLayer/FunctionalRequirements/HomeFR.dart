import 'dart:convert';
import 'package:flutter/services.dart';

class HomeFR{

  Future<String> _getfile() async{
    return await rootBundle.loadString("assets/json/data.json");
  }

  Future<Map> getdata() async{
    try {
      return jsonDecode(await _getfile());
    } catch (e) {
      print(e.toString());
    }
  }
}
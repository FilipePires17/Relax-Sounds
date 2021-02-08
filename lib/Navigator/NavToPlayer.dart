import 'dart:js';

import 'package:flutter/material.dart';
import '../ViewLayer/View/PlayerPage.dart';

Route navToPlayer(List _data, int index) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        PlayerPage(_data[index]),
  );
}

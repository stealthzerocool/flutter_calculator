

import 'package:flutter/material.dart';
import 'package:fluttercalculator/calcul.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        backgroundColor: Colors.blueAccent,

        body :Cal(),
      ),
    );
  }
}

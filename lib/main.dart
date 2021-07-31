import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/screens/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

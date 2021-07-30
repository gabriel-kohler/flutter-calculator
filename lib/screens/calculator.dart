import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/display.dart';
import 'package:flutter_calculator/components/keyboard.dart';
import 'package:flutter_calculator/models/logic.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Logic logic = Logic();

  _onPressed(String text) {
    setState(() {
      logic.applyCommand(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Display(logic.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}

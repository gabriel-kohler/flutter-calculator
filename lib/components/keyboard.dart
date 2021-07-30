import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/button.dart';
import 'package:flutter_calculator/components/button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  Keyboard(this.callback);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.65,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.withDoubleSpace(
              text: 'AC',
              callback: callback,
              color: Button.DARK,
            ),
            Button(
              text: '%',
              callback: callback,
              color: Button.DARK,
            ),
            Button.operation(text: '/', callback: callback),
          ]),
          ButtonRow(buttons: [
            Button(text: '7', callback: callback),
            Button(text: '8', callback: callback),
            Button(text: '9', callback: callback),
            Button.operation(text: 'x', callback: callback),
          ]),
          ButtonRow(buttons: [
            Button(text: '4', callback: callback),
            Button(text: '5', callback: callback),
            Button(text: '6', callback: callback),
            Button.operation(
              text: '-',
              callback: callback,
            ),
          ]),
          ButtonRow(buttons: [
            Button(text: '1', callback: callback),
            Button(text: '2', callback: callback),
            Button(text: '3', callback: callback),
            Button.operation(text: '+', callback: callback),
          ]),
          ButtonRow(buttons: [
            Button.withDoubleSpace(text: '0', callback: callback),
            Button(text: '.', callback: callback),
            Button.operation(text: '=', callback: callback),
          ]),
        ],
      ),
    );
  }
}

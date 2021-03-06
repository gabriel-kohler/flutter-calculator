import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
      ),
    );
  }
}

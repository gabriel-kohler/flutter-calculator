import 'package:flutter/material.dart';
import 'package:flutter_calculator/models/logic.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Colors.lightGreen;

  final String text;
  final bool buttonWithDoubleSpace;
  final Color color;
  final void Function(String, Operation) callback;

  final Operation operation;

  const Button({
    Key? key,
    required this.text,
    required this.callback,
    this.operation = Operation.Result,
    this.buttonWithDoubleSpace = false,
    this.color = DEFAULT,
  }) : super(key: key);

  const Button.withDoubleSpace({
    Key? key,
    required this.text,
    required this.callback,
    this.operation = Operation.Result,
    this.buttonWithDoubleSpace = true,
    this.color = DEFAULT,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    required this.callback,
    required this.operation,
    this.buttonWithDoubleSpace = false,
    this.color = OPERATION,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: buttonWithDoubleSpace ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callback(text, operation),
        child: Text(
          text,
          style: color == OPERATION
              ? GoogleFonts.ubuntu(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )
              : GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}

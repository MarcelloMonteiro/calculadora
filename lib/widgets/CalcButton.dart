import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  const CalcButton(Key key, this.text) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

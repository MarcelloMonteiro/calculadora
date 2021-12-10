import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculadora',
        home: Scaffold(
          backgroundColor: Color(0xFF283637),
          body: Center(child: CalcButton('1')),
        ));
  }
}

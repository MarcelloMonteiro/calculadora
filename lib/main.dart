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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '.',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '0',
                      fillColor: 0xFF6C807F,
                    ),
                    CalcButton(
                      text: '00',
                      fillColor: 0xFF6C807F,
                      textColor: 0xFFFFFFFF,
                    ),
                    CalcButton(
                      text: '=',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
              ],
            )));
  }
}

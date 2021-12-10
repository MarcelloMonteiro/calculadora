import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void AllClean(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void Clean(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

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
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 24),
                        color: Color(0xFF545F61)),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 48),
                        color: Colors.white),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                      textSizer: 20,
                      callback: AllClean,
                    ),
                    CalcButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                      callback: Clean,
                    ),
                    CalcButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: numClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '7',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '8',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '9',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '*',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: numClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '4',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '5',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '6',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '-',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: numClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '1',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '2',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '3',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '+',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: numClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '.',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '0',
                      fillColor: 0xFF283637,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '00',
                      fillColor: 0xFF283637,
                      textSizer: 26,
                      callback: numClick,
                    ),
                    CalcButton(
                      text: '=',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      callback: evaluate,
                    ),
                  ],
                ),
              ],
            )));
  }
}

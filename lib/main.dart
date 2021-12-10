import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

import 'package:google_fonts/google_fonts.dart';

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
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    '123*123',
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 24),
                        color: Color(0xFF545F61)),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '123',
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
                      text: '7',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '8',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '9',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '*',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '4',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '5',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '6',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '-',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '1',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '2',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '3',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '+',
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
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '0',
                      fillColor: 0xFF283637,
                    ),
                    CalcButton(
                      text: '00',
                      fillColor: 0xFF283637,
                      textSizer: 26,
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

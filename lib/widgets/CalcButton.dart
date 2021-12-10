import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSizer;
  const CalcButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      this.textSizer = 24,
      this.textColor = 0xFFFFFFFF})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(text,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                fontSize: 24,
              ))),
          onPressed: () {},
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}

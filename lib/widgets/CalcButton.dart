import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  const CalcButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        color: Colors.blue,
      ),
    );
  }
}

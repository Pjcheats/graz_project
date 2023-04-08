import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDialog extends StatelessWidget {
  final String? message;

  MyDialog({this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Column(children: [
      Text(
        "Alert!",
        style: GoogleFonts.alata(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      Text(
        "Something went wrong",
        style: GoogleFonts.alata(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ]));
  }
}

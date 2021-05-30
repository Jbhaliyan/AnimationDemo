import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Widget mainButton(
    BuildContext context, @required String path, @required String text) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, path);
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.teal,
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(textStyle: kmainButtonTextStyle),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget textButton(@required String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Colors.white30,
    ),
    child: Text(
      text,
      style: GoogleFonts.paprika(
        textStyle: TextStyle(fontSize: 20.0),
      ),
    ),
  );
}

Widget goBackButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Text(
      'Go back to Main menu!!',
      style: GoogleFonts.lato(
        textStyle: kContainerButtonTextStyle,
      ),
    ),
  );
}

Widget box(@required double h) {
  return SizedBox(
    height: h,
  );
}
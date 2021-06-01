import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

Widget mainButton(BuildContext context, String path, String text) {
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

Widget textButton(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.black12,
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
    child: Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black12,
      ),
      child: Text(
        'Go back to Main menu!!',
        style: GoogleFonts.lato(
          textStyle: kContainerButtonTextStyle,
        ),
      ),
    ),
  );
}

Widget box(double h) {
  return SizedBox(
    height: h,
  );
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListWidget {
  List<Widget> textAnimationKit = [
    ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 20.0,
              height: 100.0,
            ),
            Text(
              "Be",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
              height: 100.0,
            ),
            RotateAnimatedTextKit(
              duration: Duration(milliseconds: 1000),
              isRepeatingAnimation: true,
              totalRepeatCount: 10,
              text: ["CREATIVE", "OPTIMISTIC", "REAL"],
              textAlign: TextAlign.start,
              textStyle: GoogleFonts.lobster(
                textStyle: TextStyle(fontSize: 40.0),
              ),
            ),
          ],
        ),
      ],
    ),
    FadeAnimatedTextKit(
      duration: Duration(milliseconds: 4000),
      text: ["do IT!", "do it RIGHT!!", "do it RIGHT NOW!!!"],
      textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    ),
    SizedBox(
      width: 250.0,
      child: TyperAnimatedTextKit(
        speed: Duration(milliseconds: 500),
        text: [
          "Never backoff with the learning part",
          "you must do it",
          "better implementation",
          "- jyoti bhaliyan"
        ],
        textStyle: GoogleFonts.oswald(
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    ),
    SizedBox(
      width: 250.0,
      child: TypewriterAnimatedTextKit(
        speed: Duration(milliseconds: 500),
        text: [
          "Discipline is the best tool",
          "Design first, then code",
          "Do not patch bugs out, rewrite them",
          "Do not test bugs out, design them out",
        ],
        textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
      ),
    ),
  ];
}

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
            // ignore: deprecated_member_use
            DefaultTextStyle(
              style: GoogleFonts.lobster(
                textStyle: TextStyle(fontSize: 40.0),
              ),
              textAlign: TextAlign.start,
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    "CREATIVE",
                    duration: Duration(milliseconds: 1000),
                  ),
                  RotateAnimatedText(
                    "OPTIMISTIC",
                    duration: Duration(milliseconds: 1000),
                  ),
                  RotateAnimatedText(
                    "REAL",
                    duration: Duration(milliseconds: 1000),
                  ),
                ],

                // isRepeatingAnimation: true,
                // totalRepeatCount: 10,
              ),
            ),
          ],
        ),
      ],
    ),
    SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        child: AnimatedTextKit(
          //
          animatedTexts: [
            FadeAnimatedText(
              'do IT!',
              duration: Duration(milliseconds: 4000),
            ),
            FadeAnimatedText(
              'do it RIGHT!!',
              duration: Duration(milliseconds: 4000),
            ),
            FadeAnimatedText(
              'do it RIGHT NOW!!!',
              duration: Duration(milliseconds: 4000),
            ),
          ],
        ),
      ),
    ),
    SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: GoogleFonts.oswald(
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
        ),
        child: AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            "Never backoff with the learning part",
            speed: Duration(milliseconds: 500),
          ),
          TyperAnimatedText(
            "you must do it",
            speed: Duration(milliseconds: 500),
          ),
          TyperAnimatedText(
            'better implementation',
            speed: Duration(milliseconds: 500),
          ),
          TyperAnimatedText(
            '- jyoti bhaliyan',
            speed: Duration(milliseconds: 500),
          ),
        ]),
      ),
    ),
    SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Discipline is the best tool',
              speed: Duration(milliseconds: 500),
            ),
            TypewriterAnimatedText(
              'Design first, then code',
              speed: Duration(milliseconds: 500),
            ),
            TypewriterAnimatedText(
              'Do not patch bugs out, rewrite them',
              speed: Duration(milliseconds: 500),
            ),
            TypewriterAnimatedText(
              'Do not test bugs out, design them out',
              speed: Duration(milliseconds: 500),
            )
          ],
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
    ),
  ];
}

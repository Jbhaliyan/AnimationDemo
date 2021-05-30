import 'package:animationexample/constants.dart';
import 'package:animationexample/utilities/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadeAnime extends StatefulWidget {
  @override
  _FadeAnimeState createState() => _FadeAnimeState();
}

class _FadeAnimeState extends State<FadeAnime> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 2),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Hello Dear',
                        style:
                            GoogleFonts.pacifico(textStyle: kOpacityTextStyle),
                      ),
                      Text(
                        'This is just a testing for Animated Opacity widget',
                        style:
                            GoogleFonts.pacifico(textStyle: kOpacityTextStyle),
                      ),
                      Text(
                        'Keep the spirit high',
                        style:
                            GoogleFonts.pacifico(textStyle: kOpacityTextStyle),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                'Opacity',
                style: GoogleFonts.lato(textStyle: kOpacityButtonTextStyle),
              ),
              onPressed: () {
                setState(() {
                  opacity = opacity == 0.0 ? 1.0 : 0.0;
                });
              },
            ),
            goBackButton(context),
          ],
        ),
      ),
    );
  }
}

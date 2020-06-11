import 'package:animationexample/utilities/listwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ListWidget _listWidget = new ListWidget();

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  List<String> labels = [
    "Rotate",
    "Fade",
    "Typer",
    "Typewriter",
  ];
  List<Color> _colors = [
    Colors.orange[800],
    Colors.brown[600],
    Colors.lightGreen[800],
    Colors.teal[700],
    Colors.blue[700],
    Colors.blueGrey[50],
    Colors.white
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.0,
            width: double.maxFinite,
          ),
          Text(
            labels[_index],
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(color: _colors[_index]),
            child: Center(child: _listWidget.textAnimationKit[_index]),
            height: 300.0,
            width: 300.0,
          ),
          Expanded(child: Container()),
          RaisedButton(
            child: Text("Animate Text",
            style:GoogleFonts.paprika(textStyle:TextStyle(fontSize: 20.0))),
            onPressed: () {
            setState(
              () {
                _index = (_index + 1) % _listWidget.textAnimationKit.length;
              },
            );
          }),
          RaisedButton(
            child: Text("Go Back To MainMenu",
            style:GoogleFonts.paprika(textStyle:TextStyle(fontSize: 20.0))),
            onPressed: (){
            Navigator.pop(context);
          }),
          SizedBox(
            height: 20.0,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}

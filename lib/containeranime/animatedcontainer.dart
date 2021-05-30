import 'package:animationexample/containeranime/randomClasses.dart';
import 'package:animationexample/utilities/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

const _duration = Duration(milliseconds: 500);

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  Color? color;
  var _height = 100.0;
  var _width = 100.0;
  // double margin;
  double? border;

  void initstate() {
    super.initState();
    color = Colors.teal;
    border = randomBorderradius();
    // margin=randomMargin();
  }

  void animateContainer() {
    setState(() {
      color = randomColor();
      _height = _height == 100.0 ? 200.0 : 100.0;
      _width = _width == 100.0 ? 200.0 : 100.0;
      // margin = randomMargin();
      border = randomBorderradius();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              margin: EdgeInsets.all(10.0),
              duration: _duration,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              height: _height,
              width: _width,
              curve: Curves.easeInOutBack,
            ),
            // SizedBox(
            //   height: 40.0,
            // ),
            box(20),
            GestureDetector(
                onTap: () => animateContainer(),
                child: textButton('Animate Container')),
            box(40.0),
            goBackButton(context),
          ],
        ),
      ),
    );
  }
}

import 'package:animationexample/animationtext/animationtext.dart';
import 'package:animationexample/constants.dart';
import 'containeranime/animatedcontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fadeanime/animatedopacity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) => MyHomePage(),
          '/animatedcontainer': (context) => ContainerDemo(),
          '/animatedopacity': (context) => FadeAnime(),
          '/animatedtext': (context) => AnimatedText(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animation Example",
          style: GoogleFonts.getFont('Pacifico'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Animated Container',
                  style: GoogleFonts.lato(textStyle: kmainButtonTextStyle),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/animatedcontainer');
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              RaisedButton(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Animated Opacity',
                  style: GoogleFonts.lato(textStyle: kmainButtonTextStyle),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/animatedopacity');
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              RaisedButton(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Animated Text',
                  style: GoogleFonts.lato(textStyle: kmainButtonTextStyle),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/animatedtext');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

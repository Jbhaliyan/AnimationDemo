import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Animation Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _color = Colors.blue;
  var _height = 100.0;
  var _width = 100.0;

  animateContainer() {
    setState(() {
      _color = _color == Colors.blue ? Colors.orange : Colors.red;
      _height = _height == 100.0 ? 200.0 : 100.0;
      _width = _width == 100.0 ? 200.0 : 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.getFont('Lato'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              color: _color,
              height: _height,
              width: _width,
              curve: Curves.easeInBack,
            ),
            OutlineButton(
              onPressed: () => animateContainer(),
              child: Text('Animate Container'),
            ),
          ],
        ),
      ),
    );
  }
}

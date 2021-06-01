import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          padding: const EdgeInsets.all(16.0),
          // alignment: Alignment.
          child: PhotoHero(
            photo: 'images/star.png',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('Star Page'),
                      ),
                      body: Container(
                        child: PhotoHero(
                            photo: 'images/star.png',
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            width: 400.0),
                      ),
                    );
                  },
                ),
              );
            },
            width: 200,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// class LogoWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Container(
//         margin: EdgeInsets.symmetric(vertical: 10),
//         child: FlutterLogo(),
//       );
// }

// class GrowTransition extends StatelessWidget {
//   GrowTransition({required this.child, required this.animation});

//   final Widget child;
//   final Animation<double> animation;

//   @override
//   Widget build(BuildContext context) => Center(
//         child: AnimatedBuilder(
//             animation: animation,
//             builder: (context, child) => Container(
//                   height: animation.value,
//                   width: animation.value,
//                   child: child,
//                 ),
//             child: child),
//       );
// }

class AnimateClass extends StatefulWidget {
  @override
  _AnimateClassState createState() => _AnimateClassState();
}

class _AnimateClassState extends State<AnimateClass>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  // late Animation<double> opacityAnimation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // sizeAnimation = Tween<double>(begin: 0, end: 300).animate(controller);
    // opacityAnimation = Tween<double>(begin: 0.1, end: 1).animate(controller);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addStatusListener((state) => print('$state'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(
        animation: animation,
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends AnimatedWidget {
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
    // TODO: implement build
  }
}

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class MovingLogo extends StatefulWidget {
  @override
  _MovingLogoState createState() => _MovingLogoState();
}

class _MovingLogoState extends State<MovingLogo> {
  final Random _random = Random();
  final Duration _duration = const Duration(milliseconds: 1000);
  Timer _timer;
  double _top = 0;
  double _left = 0;

  @override
  void initState() {
    super.initState();
    initMove();
  }

  void initMove() {
    _timer = Timer.periodic(
      _duration,
      (timer) {
        move();
      },
    );
  }

  void move() {
    final Size size = MediaQuery.of(context).size;
    setState(() {
      _top = _random.nextInt(size.height.toInt() - 100).toDouble();
      _left = _random.nextInt(size.width.toInt() - 100).toDouble();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: _top,
      left: _left,
      child: const Image(
        width: 100,
        height: 100,
        image: AssetImage('assets/logo.png'),
      ),
      duration: _duration,
    );
  }
}

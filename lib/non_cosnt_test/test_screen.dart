import 'package:flutter/material.dart';

import '../config.dart';
import 'moving_logo.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          for (var i = 0; i < numberOfLogo; i++) MovingLogo(),
        ],
      ),
    );
  }
}

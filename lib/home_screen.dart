import 'package:flutter/material.dart';

import 'const_test/test_screen.dart' as const_test;
import 'non_cosnt_test/test_screen.dart' as non_const_test;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blueAccent,
              child: Text(
                'Constant Test',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const_test.TestScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 12.0,
            ),
            FlatButton(
              color: Colors.blueAccent,
              child: Text(
                'Non Constant Test',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => non_const_test.TestScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'lib/assets/doormat.png',
            width: 150,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.asset('lib/assets/splash_img.png'),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 10,
              child: Text('Welcome'),
            ),
          ],
        ),
      ),
    );
  }
}

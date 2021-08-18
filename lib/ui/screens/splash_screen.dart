import 'dart:async';

import 'package:displaya/ui/screens/form_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    var timer = Timer(Duration(milliseconds: 500), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FormScreen(),
        ),
      );
    });
  }

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

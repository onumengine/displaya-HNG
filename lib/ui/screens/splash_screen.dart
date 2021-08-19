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
    var timer = Timer(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
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
            'lib/assets/hngicon.png',
            width: 150,
          ),
        ),
      ),
    );
  }
}

class _YourWidgetState extends State<SplashScreen> {
  String? value;
  TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(value!),
        TextButton(
          onPressed: () {
            setState(() {
              value = controller.text;
            });
          },
          child: Text('PRESS ME'),
        ),
      ],
    );
  }
}

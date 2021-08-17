import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CircleAvatar(),
            Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Username'),
                    Text('Your username goes here'),
                    Divider(),
                    Text('Email'),
                    Text('Your email goes here'),
                    Divider(),
                    Text('Phone'),
                    Text('Your phone number goes here'),
                    Divider(),
                    Text('Gender'),
                    Text('Your gender goes here'),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

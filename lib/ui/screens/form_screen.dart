import 'package:displaya/ui/components/text_widget.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _usernameFieldKey = GlobalKey<FormState>();

  final _emailFieldKey = GlobalKey<FormState>();

  final _phoneFieldKey = GlobalKey();

  final _zipCodeKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = TextEditingController();

  final _zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Row(
                children: <Text>[
                  Text(
                    'Wel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    'come',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Text(
                  'Please enter your credentials to proceed',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              TextWidget(
                hintText: 'Username',
                key: _usernameFieldKey,
                controller: _usernameController,
              ),
              SizedBox(
                height: 40.0,
              ),
              TextWidget(
                hintText: 'Email',
                key: _emailFieldKey,
                controller: _emailController,
              ),
              SizedBox(
                height: 40.0,
              ),
              TextWidget(
                hintText: 'Phone',
                key: _phoneFieldKey,
                controller: _phoneController,
              ),
              SizedBox(
                height: 40.0,
              ),
              TextWidget(
                hintText: 'Zip code',
                key: _zipCodeKey,
                controller: _zipCodeController,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

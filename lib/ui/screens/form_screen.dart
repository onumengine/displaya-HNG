import 'package:displaya/ui/components/text_widget.dart';
import 'package:displaya/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  void initState() {
    super.initState();
  }

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
                      color: Colors.deepPurpleAccent,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Text(
                  'Please enter your credentials to proceed',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
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
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _initiateSubmissionSequence(
                      context,
                      _usernameController.text,
                      _emailController.text,
                      _phoneController.text,
                      _zipCodeController.text,
                    );
                  },
                  child: Text(
                    'SUBMIT',
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

  dynamic _initiateSubmissionSequence(
    context,
    String username,
    String email,
    String phone,
    String zipCode,
  ) async {
    // return showDialog(
    //   context: context,
    //   builder: (BuildContext context) => AlertDialog(
    //     content: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   ),
    // );

    await _saveToPrefs(username, email, phone, zipCode);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProfileScreen(),
      ),
    );
  }

  Future<void> _saveToPrefs(
    String username,
    String email,
    String phone,
    String zipCode,
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('username', username);
    preferences.setString('email', email);
    preferences.setString('phone', phone);
    preferences.setString('zipCode', zipCode);
  }
}

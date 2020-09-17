import 'package:flutter/material.dart';
import 'package:golden_talent/screens/home_screen.dart';
import 'package:golden_talent/widgets/my_text_field.dart';

class SignupScreen extends StatelessWidget {
  static String id = '/SignupScreen';
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Golden Talent'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
        child: Form(
          key:
              _globalKey, //Track and trrigger when the input is done then begin the validation
          child: ListView(
            children: [
              MyTextField(
                isSecure: false,
                hint: 'Username',
              ),
              SizedBox(
                height: 16,
              ),
              MyTextField(
                isSecure: false,
                hint: 'Email',
              ),
              SizedBox(
                height: 16,
              ),
              MyTextField(
                isSecure: false,
                hint: 'Address',
              ),
              SizedBox(
                height: 16,
              ),
              MyTextField(
                isSecure: false,
                hint: 'Phone',
              ),
              SizedBox(
                height: 16,
              ),
              MyTextField(
                isSecure: true,
                hint: 'Password',
              ),
              SizedBox(
                height: 16,
              ),
              MyTextField(
                isSecure: true,
                hint: 'Re-Password',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_globalKey.currentState.validate()) {
                          //Do something
                        }
                      },
                      child: Text('Sign up'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Text('Skip'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

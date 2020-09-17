import 'package:flutter/material.dart';
import 'package:golden_talent/screens/home_screen.dart';
import 'package:golden_talent/screens/signup_screen.dart';
import 'package:golden_talent/widgets/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Golden Talent'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
        child: ListView(
          children: [
            MyTextField(
              isSecure: false,
              hint: 'new User name',
            ),
            SizedBox(
              height: 16,
            ),
            MyTextField(
              isSecure: true,
              hint: 'Password',
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                children: [
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                    child: Text('Login'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Or'),
                  SizedBox(
                    height: 16,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
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
    );
  }
}

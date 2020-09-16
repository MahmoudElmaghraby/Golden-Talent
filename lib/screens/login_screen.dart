import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Golden Talent'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: Text('Sign up'),
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

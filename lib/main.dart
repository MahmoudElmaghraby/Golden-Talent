import 'package:flutter/material.dart';
import 'package:golden_talent/screens/home_screen.dart';
import 'package:golden_talent/screens/login_screen.dart';
import 'package:golden_talent/screens/signup_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}

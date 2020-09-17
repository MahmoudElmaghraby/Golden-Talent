import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool isSecure;
  final String hint;

  MyTextField({
    @required this.isSecure,
    @required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return 'Value is empty';
        }
      },
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          //this work if ther is error or empty field
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

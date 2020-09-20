import 'package:flutter/material.dart';

class CourseItemCard extends StatelessWidget {
  final String imgDir;
  CourseItemCard(this.imgDir);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: screenWidth,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imgDir,
              height: screenHeight * 0.3,
              width: screenWidth,
              fit: BoxFit.cover,
            ),
            // ignore: missing_required_param
            OutlineButton(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Text(
                '07\nMay',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              borderSide: BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 4.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

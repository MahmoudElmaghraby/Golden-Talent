import 'package:flutter/material.dart';

class CourseItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/course_1.jpg',
            height: screenHeight * 0.3,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Golden Talent'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              child: Carousel(
                boxFit: BoxFit.cover,
                images: [
                  AssetImage('assets/images/course_1.jpg'),
                  AssetImage('assets/images/course_2.jpg'),
                  AssetImage('assets/images/course_3.jpg'),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.blue.withOpacity(0.5),
              ),
            ),
            Container(
              color: Colors.blue,
              height: screenHeight * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Register now and get a discount 50% until 1 january',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Register now and get discount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.black,
                    padding: EdgeInsets.only(
                      top: 16,
                      bottom: 16,
                      right: 32,
                      left: 32,
                    ),
                    child: Text(
                      'REGISTER NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
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

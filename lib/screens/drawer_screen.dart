import 'package:flutter/material.dart';
import 'package:golden_talent/widgets/nav_list_tile_item.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/background_nav.jpg',
                height: screenHeight * 0.2,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 16,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.2,
                    ),
                    Text(
                      'User Name ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('User Email'),
                  ],
                ),
              ),
            ],
          ),
          NavListTileItem(
            itemIcon: Icons.home,
            itemText: 'Home',
          ),
          NavListTileItem(
            itemIcon: Icons.home,
            itemText: 'About us',
          ),
          NavListTileItem(
            itemIcon: Icons.home,
            itemText: 'Courses',
          ),
          NavListTileItem(
            itemIcon: Icons.home,
            itemText: 'News',
          ),
          NavListTileItem(
            itemIcon: Icons.home,
            itemText: 'Contact',
          ),
          NavListTileItem(
            itemIcon: Icons.dashboard,
            itemText: 'Logout',
          ),
          Divider(
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                'Our social',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              NavListTileItem(
                itemIcon: Icons.face,
                itemText: 'Follow us on facebook',
              ),
              NavListTileItem(
                itemIcon: Icons.face,
                itemText: 'Follow us on Linkedin',
              ),
              NavListTileItem(
                itemIcon: Icons.face,
                itemText: 'Follow us on Twitter',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

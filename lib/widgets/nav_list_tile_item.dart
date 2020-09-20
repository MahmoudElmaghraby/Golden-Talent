import 'package:flutter/material.dart';

class NavListTileItem extends StatelessWidget {
  final IconData itemIcon;
  final String itemText;

  NavListTileItem({
    @required this.itemIcon,
    @required this.itemText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        itemIcon,
        size: 30,
      ),
      title: Text(
        itemText,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

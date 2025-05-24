import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  const IconItem({super.key, required this.title, required this.icon});
 
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        Text(title, style: TextStyle(color: Colors.black, fontSize: 12)),
      ]
    );
  }
}
import 'package:fakestagram/widgets/icon_item.dart';
import 'package:flutter/material.dart';

class ExampleBar extends StatelessWidget {
  const ExampleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconItem(title: "Home", icon: Icon(Icons.home, color: Colors.black,)),
        IconItem(title: "Search", icon: Icon(Icons.search, color: Colors.black)),
        IconItem(title: "Messages", icon: Icon(Icons.message, color: Colors.black)),
        IconItem(title: "Profile", icon: Icon(Icons.person_2, color: Colors.black)),    
      ],
      )
    );
    
  }
}
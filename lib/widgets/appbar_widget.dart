import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements	 PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //profile picture icon
      leading: Padding(padding: const EdgeInsets.all(8),
        child: const CircleAvatar(
          backgroundImage: NetworkImage("https://thispersondoesnotexist.com/"),
        ),
      ),
      title: Text("Fekagram"),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        const Icon(Icons.notifications_none, color: Colors.black),
        const SizedBox(width: 15),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
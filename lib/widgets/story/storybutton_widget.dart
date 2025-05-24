import 'package:flutter/material.dart';

class StoryButton extends StatelessWidget {
  const StoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://thispersondoesnotexist.com/",
        height: 60,
        width: 60,
        fit: BoxFit.cover,
      )
    );
  }
}
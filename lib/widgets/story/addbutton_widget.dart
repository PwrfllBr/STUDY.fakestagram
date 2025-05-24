import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(72, 244, 67, 54),
      ),
      child: Icon(Icons.add, color: const Color.fromARGB(255, 244, 67, 54),),
    );
  }
}

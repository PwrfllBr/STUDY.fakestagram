import 'package:fakestagram/widgets/story/addbutton_widget.dart';
import 'package:fakestagram/widgets/story/storybutton_widget.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){
          return Row(children: [
            index == 0 ? AddButton() : StoryButton(),
            SizedBox(width: 5),
          ]);
        },
      ),
    );
  }
}
import 'package:fakestagram/widgets/appbar_widget.dart';
import 'package:fakestagram/widgets/examplebar_widget.dart';
import 'package:flutter/material.dart';

//StatelessWidget is used when the widget does not require mutable state.
//StatefulWidget is used when the widget requires mutable state.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Discover', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
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
            )
          ],
        ),
      ),
      bottomNavigationBar: ExampleBar(),

    );
  }
}

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

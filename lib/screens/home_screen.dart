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
      body: Center(
        child: Text("this the body")
        ),
      bottomNavigationBar: ExampleBar(),

    );
  }
}

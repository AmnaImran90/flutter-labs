import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mobile app dev lab"),
          backgroundColor: Color.fromARGB(255, 185, 61, 16),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("You have pressed the button 0 times")],
          )),
        ),
        backgroundColor: Color.fromARGB(255, 82, 101, 110),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          tooltip: "this button is not functional",
          backgroundColor: Color.fromARGB(255, 56, 163, 250),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Create My Own Widget
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("mazuma Attendance Time App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("mazuma"),
              Text("mazuma th"),
              Text("mazuma thailand"),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

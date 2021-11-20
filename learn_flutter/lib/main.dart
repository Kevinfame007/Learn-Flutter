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
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2021/10/05/14/32/ocean-6682870__340.jpg"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

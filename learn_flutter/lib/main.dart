import 'package:flutter/material.dart';


void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("MAZUMA Attendance Time App"),
      ),
      body: Text("HELLO MAZUMA"),
    ),
    theme: ThemeData(primarySwatch: Colors.green),
  );
  runApp(app);
}

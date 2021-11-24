import 'dart:ui';
import 'package:flutter/material.dart';
// import 'InfoBox.dart';

void main() {
  runApp(MyApp());
}

// Create My Own Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MZM App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void getExchageRate() {
    print("pull data");
  }

  //Display and Lauch App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "อัตราการแลกเปลี่ยนสกุลเงิน",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}

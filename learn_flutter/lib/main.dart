import 'package:flutter/material.dart';
import 'InfoBox.dart';

void main() {
  runApp(MyApp());
}

// Create My Own Widget
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

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

  //Display and Lauch App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InfoBox("ยอดคงเหลือ", 12000, Colors.blue, 120),
            SizedBox(height: 10,),
            InfoBox("รายรับ", 12000, Colors.green, 120),
            SizedBox(height: 10,),
            InfoBox("รายจ่าย", 12000, Colors.red, 120),
            SizedBox(height: 10,),
            InfoBox("ค้่างชำระ", 5000, Colors.orange, 120),
          ],
        ),
      ),
    );
  }
}

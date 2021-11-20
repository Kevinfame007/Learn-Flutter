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
  int number = 0;

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

  @override
  Widget build(BuildContext context) {
    
    //Group of Text
    List<Widget> data = [];

    for (var i = 0; i < 10; i++) {
      data.add(
        Text("รายการที่ ${i+1}"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("mazuma"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}

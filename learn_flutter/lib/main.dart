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

  //Display and Lauch App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mazuma"),
        ),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return ListTile(
                title: Text("รายการที่ ${index + 1}"),
              );
            }));
  }

  // //Text and Info
  // List<Widget> getData(int count) {
  //   List<Widget> data = [];
  //   for (var i = 0; i < count; i++) {
  //     var menu = ListTile(
  //       title: Text(
  //         "รายการที่ ${i + 1}",
  //         style: TextStyle(fontSize: 25),
  //       ),
  //       subtitle: Text("รายการย่อยที่ ${i + 1}"),
  //     );
  //     data.add(menu);
  //   }
  //   return data;
  // }
}

import 'package:flutter/material.dart';
import 'PdMenu.dart';

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

  //Group of info
  List<PdMenu> menu = [
    PdMenu("เครื่องกรองน้ำ รุ่น AQ-3", "2,100"),
    PdMenu("เครื่องกรองน้ำแบบสวมปลายก๊อก รุ่น TORAY SX-705V", "2,990"),
    PdMenu("เครื่องกรองน้ำ รุ่น AQ-50 UF", "4,390"),
  ];

  //Display and Lauch App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mazuma"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              PdMenu product = menu[index];
              return ListTile(
                title: Text(
                  product.name,
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "ราคา " + product.price + " บาท",
                  style: TextStyle(fontSize: 20),
                ),
              );
            }));
  }
}

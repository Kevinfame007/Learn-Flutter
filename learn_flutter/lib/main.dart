import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/ExchangeRate.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

// Create My Own Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "แอปแปลงสกุลเงิน Currency Transfer",
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

  late ExchangeRate _dataFromAPI;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    // RequestDataApi();
    getExchageRate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future <ExchangeRate> getExchageRate() async {
    var url = Uri.parse(
        "http://api.exchangeratesapi.io/v1/latest?access_key=3a4e4e81f3c21dfdfb5f8b317f2e8fa6&format=1");
    var response = await http.get(url);
    _dataFromAPI = exchangeRateFromJson(response.body);
    return _dataFromAPI;
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
      body: FutureBuilder(
        future: getExchageRate(),
        builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot){
          //ถ้าเึงข้อมูลมาครบ
          if (snapshot.connectionState == ConnectionState.done) {
            var result = snapshot.data;
            double amount = 100;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  MoneyBox("สกุลเงิน EUR", 1, Colors.blue, 150, " eur"),
                  SizedBox(height: 5,),
                  MoneyBox("THB", amount * result.rates["THB"], Colors.green, 150, " บาท"),
                  SizedBox(height: 5,),
                  MoneyBox("USD", amount * result.rates["USD"], Colors.red, 150, " usd"),
                ],
              ),
            );
          }
          return LinearProgressIndicator();
        },)
      );
    
  }
}

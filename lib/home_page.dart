import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, num3 = 0, randomNumber = 0, sum = 0;
  var messages = [
    {1: "Hello there !"},
    {2: "Working on Flutter"},
    {3: "VS code is best"},
    {4: "Waleed is installing Android SDK"},
    {5: "It will take time to learn"},
    {6: "Ye waqt bhi guzar jaey ga"},
    {7: "Aa sajna tur chaliye"},
    {8: "Bhola Records"},
    {9: "Enough"},
    {10: "End it"}
  ];

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  final TextEditingController t3 = new TextEditingController(text: "0");

  void randomNumberGenerator() {
    setState(() {
      print(messages[1]);
    });
  }

  void compareInputsWithRandomNumber() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      num3 = int.parse(t3.text);
      if (num1 == randomNumber) {
        print('num1 matched');
      } else if (num2 == randomNumber) {
        print('num2 matched');
      } else if (num3 == randomNumber) {
        print('num3 matched');
      } else {
        return print('no number matched');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Secret Message"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 3"),
              controller: t3,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Generate Random Number"),
                  color: Colors.greenAccent,
                  onPressed: randomNumberGenerator,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Get Message"),
                  color: Colors.greenAccent,
                  onPressed: compareInputsWithRandomNumber,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

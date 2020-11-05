import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, num3 = 0, sum = "";
  int randomNumber;
  var messages = [
    "Hello there !",
    "Working on Flutter",
    "VS code is best",
    "Waleed is installing Android SDK",
    "It will take time to learn",
    "Ye waqt bhi guzar jaey ga",
    "Aa sajna tur chaliye",
    "Bhola Records",
    "Enough",
    "End it"
  ];
  String secretMessage = "";

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  final TextEditingController t3 = new TextEditingController(text: "0");

  void randomNumberGenerator() {
    random(min, max) {
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }

    randomNumber = (random(0, 10));
    print(randomNumber);
  }

  void compareInputsWithRandomNumber() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      num3 = int.parse(t3.text);
      if (num1 == randomNumber) {
        secretMessage = messages[randomNumber].toString();
        print(secretMessage);
      } else if (num2 == randomNumber) {
        secretMessage = messages[randomNumber].toString();
        print(secretMessage);
      } else if (num3 == randomNumber) {
        secretMessage = messages[randomNumber].toString();
        print(secretMessage);
      } else {
        secretMessage = "No number matched";
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
              "Message : $secretMessage",
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

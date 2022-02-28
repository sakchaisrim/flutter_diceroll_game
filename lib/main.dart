import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roll Game 555',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imageList = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png'
  ];

  int rDice1 = Random().nextInt(6);
  int rDice2 = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text('The Sum is: ' + (rDice1 + rDice2 + 2).toString(),
                  style: TextStyle(fontSize: 20.0)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'images/' + imageList[rDice1],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'images/' + imageList[rDice2],
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                child: Text('Click Dice Roll'),
                onPressed: changeImage,
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeImage() {
    setState(() {
      rDice1 = Random().nextInt(6);
      rDice2 = Random().nextInt(6);
    });
  }
}

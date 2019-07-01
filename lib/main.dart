import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceFace = 1;
  int rightDiceFace = 3;

  void randomiseNumbers() {
    setState(() {
      leftDiceFace = Random().nextInt(6) + 1;
      rightDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomiseNumbers();
              },
              child: Image.asset('images/dice$leftDiceFace.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomiseNumbers();
              },
              child: Image.asset('images/dice$rightDiceFace.png'),
            ),
          ),
        ],
      ),
    );
  }
}

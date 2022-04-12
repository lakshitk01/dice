import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'DICE',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftdicenumber = Random().nextInt(6) + 1;
                  print('dice number changed to = $leftdicenumber');
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightdicenumber = Random().nextInt(6) + 1;
                  print('dice number changed to = $rightdicenumber');
                });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

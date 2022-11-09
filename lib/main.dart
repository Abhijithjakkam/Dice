import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Center(
            child: Text(
              'PLAY WITH DICE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 20.0,
                fontFamily: 'SourceSansPro',
              ),
            ),
          ),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  var left = 1;
  var right = 1;

  Widget build(BuildContext context) {
    void changeDiceNumber() {
      setState(() {
        left = Random().nextInt(6) + 1;
        right = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}

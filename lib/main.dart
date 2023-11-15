import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(child: Text('Game Of Dice')),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonDice = 1;
  int rightButtonDice = 1;
  void longRandom() {
    leftButtonDice = Random().nextInt(6) + 1;
    rightButtonDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.all(16),
                ),
              ),
              child: Image.asset('images/dice$leftButtonDice.png'),
              onPressed: () {
                setState(() {
                  leftButtonDice = Random().nextInt(6) + 1;
                });
              },
              onLongPress: () {
                setState(() {
                  longRandom();
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.all(16),
                ),
              ),
              child: Image.asset('images/dice$rightButtonDice.png'),
              onPressed: () {
                setState(() {
                  rightButtonDice = Random().nextInt(6) + 1;
                });
              },
              onLongPress: () {
                setState(() {
                  longRandom();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

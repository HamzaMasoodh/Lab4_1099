import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 117, 13, 82),
        appBar: AppBar(
          title: Center(child: Text('Ludo Star')),
          backgroundColor: Color.fromARGB(255, 87, 14, 71),
        ),
        body: Task1(),
      ),
    ),
  );
}

class Task1 extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<Task1> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            
            child: TextButton(
              onPressed: () {
                randomGenerator();
              },
              
              child: Image.asset('images/dice$dice.png'),
            ),
          ),
        ],
      ),
    );
  }

  randomGenerator() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }
}
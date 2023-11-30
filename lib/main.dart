import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade500,
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white),
          ),
          backgroundColor: Colors.green.shade900,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('images/dice$leftdicenumber.png')),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('images/dice$rightdicenumber.png')),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      backgroundColor: Colors.green.shade800),
                  onPressed: () {
                    setState(() {
                      leftdicenumber = Random().nextInt(6) + 1;
                      rightdicenumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: const Text('Play'))
            ],
          ),
        ],
      ),
    );
  }
}

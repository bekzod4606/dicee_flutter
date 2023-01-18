// ignore_for_file: unused_import, use_key_in_widget_constructors, avoid_print, unused_local_variable, must_be_immutable, unused_label

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDicePressed = 1;
  int rightDicePressed = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState:
                  () {
                    leftDicePressed = Random().nextInt(6) + 1;
                  };
                },
                child: Image(
                  image: AssetImage('images/dice$leftDicePressed.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState:
                  () {
                    rightDicePressed = Random().nextInt(6) + 1;
                  };
                },
                child: Image(
                  image: AssetImage('images/dice$rightDicePressed.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dice_screen.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceScreen(),
      ),
    ),
  );
}

import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  var _leftDiceNumber = 1;
  var _rightDiceNumber = 1;

  _randomize() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
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
                _randomize();
              },
              child: Image.asset('images/dice$_leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                _randomize();
              },
              child: Image.asset('images/dice$_rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

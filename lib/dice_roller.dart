import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = randomizer.nextInt(6) + 1;
  var currentDiceRoll2 = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll1.png', width: 200),
        const SizedBox(height: 20),
        Image.asset('assets/images/dice-$currentDiceRoll2.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: Text(
            "Press Me",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

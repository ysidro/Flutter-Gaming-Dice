import 'package:flutter/material.dart';
import 'package:frist_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final starAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: starAlignment,
          end: endAlignment,
        ),

        color: Colors.white,
      ),
      child: Center(child: DiceRoller()),
    );
  }
}

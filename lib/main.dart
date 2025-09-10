import 'package:flutter/material.dart';
import 'package:frist_app/gradient_conatiner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',

      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: GradientContainer(
          colors: [
            Color.fromRGBO(4, 165, 125, 1),
            Color.fromRGBO(6, 111, 153, 1),
          ],
        ),
      ),
    );
  }
}

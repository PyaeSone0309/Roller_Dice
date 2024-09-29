import 'package:flutter/material.dart';
import 'package:roller_dice/dice_roller.dart';
// import 'package:roller_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(backgroundColor: Colors.deepPurple, body: MyApp()),
  ));
}

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

void rollDice() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: const [Colors.deepPurple, Colors.purpleAccent],
              begin: startAlignment,
              end: endAlignment)),
      // child: const GradientContainer('Hello World',text2: 'Pyae Sone Aung',)
      child: const DiceRoller()
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 2;
  final Random randomizer = Random();

  void rollDice (){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            // const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                )
              ),
              child: const Text("Roll Dice")
            )
          ],
        )
      );
  }
}
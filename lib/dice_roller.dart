import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  // This widget is used to create a dice roller interface.
  // It manages the state of the dice images and handles the rolling logic.
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // This state class manages the state of the DiceRoller widget.
  // It keeps track of the current dice images and handles the rolling logic.
  int dice1 = 1;
  int dice2 = 1;
  int dice3 = 1;
  int dice4 = 1;
  int dice5 = 1;
  int dice6 = 1;
  bool sortAscending = false;

  @override
  Widget build(BuildContext context) {
    // This method builds the UI of the DiceRoller widget.
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$dice1.png',
              width: 100,
            ),
            Image.asset(
              'assets/images/dice-$dice2.png',
              width: 100,
            ),
            Image.asset(
              'assets/images/dice-$dice3.png',
              width: 100,
            ),
            Image.asset(
              'assets/images/dice-$dice4.png',
              width: 100,
            ),
            Image.asset(
              'assets/images/dice-$dice5.png',
              width: 100,
            ),
            Image.asset(
              'assets/images/dice-$dice6.png',
              width: 100,
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white70,
                ),
                child: const Text('Roll Dice')),
          ],
        );
    }

    void rollDice() {
      // This function is called when the "Roll Dice" button is pressed.
      // It will generate a random number between 1 and 6 to simulate rolling a die.
      setState(() {
        final random = Random();

        // Generate random numbers for each die        
        List<int> diceValues = List.generate(6, (index) => random.nextInt(6) + 1);
        diceValues.sort((a, b) => (sortAscending) ? a.compareTo(b) : b.compareTo(a));

        dice1 = diceValues[0];
        dice2 = diceValues[1];
        dice3 = diceValues[2];
        dice4 = diceValues[3];
        dice5 = diceValues[4];
        dice6 = diceValues[5];
      });
    }
  }

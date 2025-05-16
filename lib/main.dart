import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  
  void rollDice() {
    // This function is called when the "Roll Dice" button is pressed.
    // It will generate a random number between 1 and 6 to simulate rolling a die.
    // You can implement the logic to update the dice images here.

  }
  
  // The runApp function takes a widget and makes it the root of the widget tree.
  // In this case, it will build the MaterialApp widget and display it on the screen.
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('¡Yahtzee!')),
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 73, 131, 179),
            Color.fromARGB(255, 0, 0, 0),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(key: const Key('dice-1'),
            'assets/images/dice-1.png',
            width: 100,
            ), // Image.asset
            Image.asset(key: const Key('dice-2'),
            'assets/images/dice-2.png',
            width: 100,
            ),
            Image.asset(key: const Key('dice-3'),
            'assets/images/dice-3.png',
            width: 100,
            ), // Image.asset
            Image.asset(key: const Key('dice-4'),
            'assets/images/dice-4.png',
            width: 100,
            ),
            Image.asset(key: const Key('dice-5'),
            'assets/images/dice-5.png',
            width: 100,
            ),
            TextButton(onPressed: rollDice, child: const Text('Roll Dice')),
          ]) ,
        ),
      ),
    ),
  );
}


import 'package:first_app/dice_roller.dart';
import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  
  // The runApp function takes a widget and makes it the root of the widget tree.
  // In this case, it will build the MaterialApp widget and display it on the screen.
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('¡Tirador de Dados!')),
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 73, 131, 179),
            Color.fromARGB(255, 0, 0, 0),
          ],
          child: DiceRoller(),
        ),
      ),
    ),
  );
}


import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  @override
  Widget build(BuildContext context) {
    var currentNum = random.nextInt(6) + 1;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/inverted-dice-$currentNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              currentNum = random.nextInt(6) + 1;
            });
          },
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

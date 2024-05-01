import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CafeFav extends StatefulWidget {
  const CafeFav({super.key});

  @override
  State<CafeFav> createState() => _CafeFavState();
}

class _CafeFavState extends State<CafeFav> {
  int strength = 1;
  int sugars = 1;

  void increasesStrength() {
    setState(() {
      strength = strength < 10 ? strength + 1 : 1;
    });
  }

  void increasesSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Text('Strength: '),
          Text('$strength'),
          Image.asset(
            'assets/coffee_bean.png',
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.brown[700],
              foregroundColor: Colors.white,
            ),
            onPressed: increasesStrength,
            child: const Text(
              '+',
              style: TextStyle(fontSize: 20),
            ),
          )
        ]),
        Row(children: [
          const Text('Sugars: '),
          Text('$sugars'),
          Image.asset(
            'assets/sugar_cube.png',
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.brown[700],
              foregroundColor: Colors.white,
            ),
            onPressed: increasesSugars,
            child: const Text(
              '+',
              style: TextStyle(fontSize: 20),
            ),
          )
        ]),
      ],
    );
  }
}

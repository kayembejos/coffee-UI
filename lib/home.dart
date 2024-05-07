import 'package:bossing/cafe_favoris.dart';
import 'package:bossing/styled_body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Café UI',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[300],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('I really like coffee'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CafeFav(),
          ),
          Expanded(
              child: Image.asset(
            'assets/coffee_bg.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          )),
        ],
      ),
    );
  }
}

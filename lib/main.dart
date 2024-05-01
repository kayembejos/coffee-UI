import 'package:flutter/material.dart';
import 'package:bossing/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
          scrimColor: Colors.transparent,
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    ),
  );
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 100, color: Colors.red, child: const Text('Moja')),
            Container(
                height: 150, color: Colors.green, child: const Text('Mbili')),
            Container(
                height: 200, color: Colors.yellow, child: const Text('Tatu')),
          ]),
    );
  }
}

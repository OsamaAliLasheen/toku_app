import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/category_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF4D9),
        appBar: AppBar(
          title: const Text(
            'Toku',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF4A322B),
        ),
        body: Column(
          children: [
            Category(
              text: 'Numbers',
              color: const Color(0xFFF99532),
              onTap: () {
                Navigator.pushNamed(context, '/numbers page');
              },
            ),
            Category(
              text: 'Family Members',
              color: const Color(0xFF528031),
              onTap: () {
                Navigator.pushNamed(context, '/family members page');
              },
            ),
            Category(
              text: 'Colors',
              color: const Color(0xFF7D40A2),
              onTap: () {
                Navigator.pushNamed(context, '/colors page');
              },
            ),
            Category(
              text: 'Phrases',
              color: const Color(0xFF47A5CB),
              onTap: () {
                Navigator.pushNamed(context, '/phrases page');
              },
            ),
          ],
        ),
      ),
    );
  }
}

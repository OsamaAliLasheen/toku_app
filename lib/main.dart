import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/home_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/numbers page': (context) => NumbersPage(),
        '/family members page': (context) => FamilyMembersPage(),
        '/colors page': (context) => ColorsPage(),
        '/phrases page': (context) => PhrasesPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/number_container.dart';
import 'package:toku_app/models/Number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  Number one = const Number(
    image: 'assets/images/numbers/number_one.png',
    jpName: 'ichi',
    engName: 'one',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463025),
          title: const Text(
            'Numbers',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: Column(
          children: [
            NumbersContainer(
              number: one,
            ),
            NumbersContainer(
              number: one,
            ),
            NumbersContainer(
              number: one,
            ),
            NumbersContainer(
              number: one,
            ),
            NumbersContainer(
              number: one,
            ),
          ],
        ));
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/number_container.dart';
import 'package:toku_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      engName: 'One',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      engName: 'Two',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      engName: 'Three',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      engName: 'Four',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      engName: 'Five',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      engName: 'Six',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      engName: 'Seven',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      engName: 'Eight',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      engName: 'Nine',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      engName: 'Ten',
    ),
  ];
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
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            return Item(number: numbers[num]);
          },
        ));
  }
}

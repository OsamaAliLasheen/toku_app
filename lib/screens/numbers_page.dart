import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/number_container.dart';
import 'package:toku_app/models/Number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  Number one = const Number(
    image: 'assets/images/numbers/number_one.png',
    jpName: 'Ichi',
    engName: 'One',
  );
  Number two = const Number(
    image: 'assets/images/numbers/number_two.png',
    jpName: 'Ni',
    engName: 'Two',
  );
  Number three = const Number(
    image: 'assets/images/numbers/number_three.png',
    jpName: 'San',
    engName: 'Three',
  );
  Number four = const Number(
    image: 'assets/images/numbers/number_four.png',
    jpName: 'Shi',
    engName: 'Four',
  );
  Number five = const Number(
    image: 'assets/images/numbers/number_five.png',
    jpName: 'Go',
    engName: 'Five',
  );
  Number six = const Number(
    image: 'assets/images/numbers/number_six.png',
    jpName: 'Roku',
    engName: 'Six',
  );
  Number seven = const Number(
    image: 'assets/images/numbers/number_seven.png',
    jpName: 'Sebun',
    engName: 'Seven',
  );
  Number eight = const Number(
    image: 'assets/images/numbers/number_eight.png',
    jpName: 'Hachi',
    engName: 'Eight',
  );
  Number nine = const Number(
    image: 'assets/images/numbers/number_nine.png',
    jpName: 'Kyu',
    engName: 'Nine',
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
              number: two,
            ),
            NumbersContainer(
              number: three,
            ),
            NumbersContainer(
              number: four,
            ),
            NumbersContainer(
              number: five,
            ),
            NumbersContainer(
              number: six,
            ),
            NumbersContainer(
              number: seven,
            ),
            NumbersContainer(
              number: eight,
            ),
            NumbersContainer(
              number: nine,
            ),
          ],
        ));
  }
}

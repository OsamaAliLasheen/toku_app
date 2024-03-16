// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/item_container.dart';
import 'package:toku_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      engName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      engName: 'Two',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      engName: 'Three',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      engName: 'Four',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      engName: 'Five',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      engName: 'Six',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      engName: 'Seven',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      engName: 'Eight',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      engName: 'Nine',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
          return ItemContainer(
            color: const Color(0xFFF99532),
            item: numbers[num],
          );
        },
      ),
    );
  }
}

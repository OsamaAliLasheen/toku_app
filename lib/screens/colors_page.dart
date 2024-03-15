// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/item_container.dart';
import 'package:toku_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  List<ItemModel> colors = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      engName: 'Black',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      engName: 'Brown',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
      jpName: 'hokorippoi kiiro',
      engName: 'Dusty Yellow',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      engName: 'Gray',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      engName: 'Green',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
      jpName: 'Aka',
      engName: 'Red',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
      jpName: 'shiro',
      engName: 'White',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      engName: 'Yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          'Colors',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, num) {
          return ItemContainer(
            color: const Color(0xFF528031),
            item: colors[num],
          );
        },
      ),
    );
  }
}

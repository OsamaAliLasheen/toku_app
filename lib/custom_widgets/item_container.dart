import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({required this.item, required this.color});
  final ItemModel item;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFFF4DB)),
            child: Image.asset(
              item.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  item.engName!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {
                print('tapped');
                final player = AudioPlayer();
                player.play(AssetSource(item.sound!));
              },
            ),
          )
        ],
      ),
    );
  }
}

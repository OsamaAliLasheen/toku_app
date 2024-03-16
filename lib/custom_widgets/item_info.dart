import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase_item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item, this.color});

  final PhraseItemModel item;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: 90,
            width: MediaQuery.of(context).size.width - 90,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpPhrase!,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    item.engPhrase!,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
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
    );
  }
}

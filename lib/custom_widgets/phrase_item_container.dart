import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/item_info.dart';
import 'package:toku_app/models/phrase_item_model.dart';

class PhraseItemContainer extends StatelessWidget {
  const PhraseItemContainer({required this.item, required this.color});
  final PhraseItemModel item;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: SingleChildScrollView(
        child: ItemInfo(
          item: item,
          color: const Color(0xFF47A5CB),
        ),
      ),
    );
  }
}

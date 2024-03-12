import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text});

  String? text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color, //Color(0xFF47A5CB),
      ),
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}

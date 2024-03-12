import 'package:flutter/material.dart';
import 'package:toku_app/models/Number.dart';

class NumbersContainer extends StatelessWidget {
  NumbersContainer({required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.orange,
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFFF4DB)),
            child: Image.asset(
              number.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  number.engName!,
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
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

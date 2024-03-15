import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Family Member'),
        ),
        body: ElevatedButton(
            onPressed: () {
              print('tapped');
              final player = AudioPlayer();
              player.play(AssetSource('sounds/numbers/number_eight_sound.mp3'));
            },
            child: Text('WHY!!!!!!')),
      ),
    );
  }
}
